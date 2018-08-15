using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CFeSatX;
using CFeSatDataSetX;
using System.Diagnostics;
using System.Runtime.InteropServices;

namespace DemoCFeSat
{
    public partial class Form1 : Form
    {
        public CFeSatX.spdCFeSatX cfeSat = new CFeSatX.spdCFeSatX();
        public CFeSatDataSetX.spdCFeSatDataSetX cfeSatDataset = new CFeSatDataSetX.spdCFeSatDataSetX();

        public Form1()
        {
            InitializeComponent();
            string[] vetor;

            vetor = cfeSat.ListarCertificados("|").Split('|');

            cbCertificado.Items.Clear();
            for (int i = 0; i < vetor.Length; i++)
            {
                cbCertificado.Items.Add(vetor[i]);
            }

            cfeSat.LoadConfig(Application.StartupPath + "\\cfesatConfig.ini");

            tbNomeDLL.Text = cfeSat.NomeDllSat;
            cbCertificado.Text = cfeSat.NomeCertificado;
            tbCNPJSoftwareHouse.Text = cfeSat.CnpjSoftwareHouse;
            tbCNPJContribuinte.Text = cfeSat.CNPJContribuinte;
            tbCodigoAtivacao.Text = cfeSat.CodigoAtivacao;

            tabSAT.TabPages.Remove(tabConfiguracao);
            tabSAT.TabPages.Remove(tabAtivacao);
        }

        public int getNumeroSessao()
        {
            Random rnd = new Random();
            edtUltimaSessao.Text = rnd.Next(100000, 999999).ToString();
            return Convert.ToInt32(edtUltimaSessao.Text);
        }

        private void btnAtivarSat_Click(object sender, EventArgs e)
        {
            int TipoCertificao = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("Informe a opção do certificado de ativação. (1 - AC SAT SEFAZ, 2 - ICP BRASIL, 3 - RENOVAÇÃO ICP BRASIL)", "Trocar Código de ativação", "1"));
            switch(TipoCertificao)
            {
                case 1 : tbRetorno.Text = cfeSat.AtivarSAT(100000, TCertificadoAtivacaoSatKind.caACSATSEFAZ); break;
                case 2 : tbRetorno.Text = cfeSat.AtivarSAT(100000, TCertificadoAtivacaoSatKind.caICPBRASIL); break;
                case 3 : tbRetorno.Text = cfeSat.AtivarSAT(100000, TCertificadoAtivacaoSatKind.caRENOVACAOICPBRASIL); break; 
            }
        }

        private void btnLoadConfig_Click(object sender, EventArgs e)
        {
            cfeSat.LoadConfig(Application.StartupPath + "\\cfesatConfig.ini");
            tbNomeDLL.Text = cfeSat.NomeDllSat;
            cbCertificado.Text = cfeSat.NomeCertificado;           
            tbCNPJSoftwareHouse.Text = cfeSat.CnpjSoftwareHouse;
            tbCNPJContribuinte.Text = cfeSat.CNPJContribuinte;
            tbCodigoAtivacao.Text = cfeSat.CodigoAtivacao;

        }

        private void btnAbrirINI_Click(object sender, EventArgs e)
        {
            Process.Start(@System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase).Replace("\\", "//").Remove(0, 7) + "//cfeSatConfig.ini");
        }

        private void cbCertificado_SelectedIndexChanged(object sender, EventArgs e)
        {
            string filelocation = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase).Replace("\\", "//").Remove(0, 7);
            IniFile ini = new IniFile(filelocation + "//cfeSatConfig.ini");

            ini.IniWriteValue("CFESAT", "NomeCertificado", cbCertificado.SelectedItem.ToString());
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (cfeSat.NomeCertificado == null) 
            {
                MessageBox.Show("Configure o Certificado");
            }
            else
            {
                tbRetorno.Text = cfeSat.AssociarAssinatura(getNumeroSessao());
            }

        }

        private void btnDecodeBase64_Click(object sender, EventArgs e)
        {
            string[] vetor;
            byte[] data;

            vetor = tbRetorno.Text.Split('|');

            if (vetor[3].Contains("Emitido"))
            {
                data = Convert.FromBase64String(vetor[6]); //Venda
            }
            else if (vetor[3].Contains("cancelado"))
            {
                data = Convert.FromBase64String(vetor[6]); // Cancelamento
            }
            else
            {
                data = Convert.FromBase64String(vetor[5]); //Teste Fim a Fim
            }

            tbRetorno.Text = Encoding.UTF8.GetString(data);
        }

        private void btnConfigRede_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath;
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);
                tbRetorno.Text = cfeSat.ConfigurarInterfaceDeREde(getNumeroSessao(), Arquivo);
            }
            
        }

        private void btnComunicarCertificado_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath;
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);
                tbRetorno.Text = cfeSat.ComunicarCertificadoICPBRASIL(getNumeroSessao(), Arquivo);
            }
        }

        private void btnTesteFim_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath;
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);
                tbRetorno.Text = cfeSat.TesteFImAFim(getNumeroSessao(), Arquivo); //Arquivo de venda comum
            }       
        }

        private void btnConsultarSAT_Click(object sender, EventArgs e)
        {
            tbRetorno.Text = cfeSat.ConsultarSAT(getNumeroSessao());
        }

        private void btnConsultarStatusOperacional_Click(object sender, EventArgs e)
        {
            tbRetorno.Text = cfeSat.ConsultarStatusOperacional(getNumeroSessao());
        }

        private void btnEnviarVenda_Click(object sender, EventArgs e)
        {
            string aRetorno;
            string[] arrRetorno;
            aRetorno = cfeSat.EnviarDadosVenda(getNumeroSessao(), tbRetorno.Text);
            arrRetorno = aRetorno.Split('|');
            if (arrRetorno.Length > 7){
                edtUltimoID.Text = arrRetorno[8];
            }

            tbRetorno.Text = aRetorno;
        }

        private void btnCancelarVenda_Click(object sender, EventArgs e)
        {
            string chave = Microsoft.VisualBasic.Interaction.InputBox("Informe a chave do CFe","Chave para cancelamento");
            string cnpjSoftwareHouse = Microsoft.VisualBasic.Interaction.InputBox("Informe a CNPJ ou CPF da software house do CFe", "CNPJ Software House do cancelamento",tbCNPJSoftwareHouse.Text);
            string cnpjCPFDestinatario = Microsoft.VisualBasic.Interaction.InputBox("Informe a CNPJ ou CPF do destinatário do CFe", "CNPJ ou CPF do destinatario do cancelamento");
            string numeroCaixa = Microsoft.VisualBasic.Interaction.InputBox("Informe o caixa do CFe", "Número do caixa do cancelamento","100");
            string signAC = Microsoft.VisualBasic.Interaction.InputBox("Informe a assinatura do aplicativo comercial do CFe (Caso não informada o componente irá gerar)", "Assinatura do aplicativo comercial do cancelamento", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
           if (!(chave.Equals("")) & !(cnpjSoftwareHouse.Equals("")) & !(numeroCaixa.Equals("")) & !(signAC.Equals("")))
            {
                tbRetorno.Text = cfeSat.CancelarUltimaVenda(getNumeroSessao(), chave, cnpjSoftwareHouse, cnpjCPFDestinatario, numeroCaixa, signAC);
            }

        }

        private void btnConsultarNumeroSessao_Click(object sender, EventArgs e)
        {
            int numeroSessaoConsultar = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("Número sessão a ser consultado", "Consultar numero sessao",edtUltimaSessao.Text));
            tbRetorno.Text = cfeSat.ConsultarNumeroSessao(getNumeroSessao(), numeroSessaoConsultar);
        }

        private void btnConverterTX2toXML_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath;
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);
                tbRetorno.Text = cfeSat.ConverterLoteParaXml(Arquivo, "ve0007");
            }
        }

        private void btnManualSat_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://atendimento.tecnospeed.com.br/hc/pt-br/categories/360000564074-CF-e-SAT");
        }

        private void btnExtrairLogs_Click(object sender, EventArgs e)
        {
            tbRetorno.Text = cfeSat.ExtrairLogs(getNumeroSessao());
        }

        private void btnBloquearSAT_Click(object sender, EventArgs e)
        {
            tbRetorno.Text = cfeSat.BloquearSAT(getNumeroSessao());
        }

        private void btnDesbloquearSAT_Click(object sender, EventArgs e)
        {
            tbRetorno.Text = cfeSat.DesbloquearSAT(getNumeroSessao());
        }

        private void btnTrocarCodigoAtivacao_Click(object sender, EventArgs e)
        {
            string codigo = Microsoft.VisualBasic.Interaction.InputBox("Informe o novo código de ativação", "Trocar Código de ativação");
            string confirmacao = Microsoft.VisualBasic.Interaction.InputBox("Informe a confirmação do novo código de ativação", "Trocar Código de ativação");
            int opcao = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("Informe a opção do código de ativação. (1 - para caráter normal, 2 - para caráter emergencial)", "Trocar Código de ativação", "1"));
            switch(opcao)
            {
                case 1: tbRetorno.Text = cfeSat.TrocarCodigoDeAtivacao(getNumeroSessao(), TOpcaoCodigoAtivacaoSatKind.caNormal, codigo, confirmacao); break;
                case 2: tbRetorno.Text = cfeSat.TrocarCodigoDeAtivacao(getNumeroSessao(), TOpcaoCodigoAtivacaoSatKind.caEmergencia, codigo, confirmacao); break;
            }
        }

        private void btnAtualizarSAT_Click(object sender, EventArgs e)
        {
            tbRetorno.Text = cfeSat.AtualizarSoftwareSAT(getNumeroSessao());
        }

        private void btnImprimir_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);
                cfeSat.ImprimirCFeSAT(Arquivo, "", "");
            }
        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);

                saveDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
                saveDialog.ShowDialog();

                int formato = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("Informe : 1 - PDF ou 2 - HTML", "Formato Exportação", "1"));
                switch (formato)
                {
                    case 1: cfeSat.ExportarCFeSAT(Arquivo, "", TFormatoExportacaoKind.fePDF, saveDialog.FileName); break;
                    case 2: cfeSat.ExportarCFeSAT(Arquivo, "", TFormatoExportacaoKind.feHTML, saveDialog.FileName); break;
                }
            }
        }

        private void btnVisualizar_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);
                cfeSat.VisualizarCFeSAT(Arquivo, "");
            }
        }

        private void btnImprimirCanc_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
            openDialog.Title = "XML Destinatário";
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);

                openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
                openDialog.Title = "XML de Cancelamento";
                openDialog.ShowDialog();
                string ArquivoCancelamento = System.IO.File.ReadAllText(openDialog.FileName);

                cfeSat.ImprimirCFeSATCancelada(Arquivo, ArquivoCancelamento, "", "");
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);
                cfeSat.EditarCFeSAT(Arquivo, "");
            }
        }

        private void btnExportarCanc_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
            openDialog.Title = "XML Destinatário";
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);

                openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
                openDialog.Title = "XML de Cancelamento";
                openDialog.ShowDialog();
                string ArquivoCancelamento = System.IO.File.ReadAllText(openDialog.FileName);

                saveDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
                saveDialog.ShowDialog();

                int formato = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("Informe : 1 - PDF ou 2 - HTML", "Formato Exportação", "1"));
                switch (formato)
                {
                    case 1: cfeSat.ExportarCFeSATCancelada(Arquivo, ArquivoCancelamento, "", TFormatoExportacaoKind.fePDF, saveDialog.FileName); break;
                    case 2: cfeSat.ExportarCFeSATCancelada(Arquivo, ArquivoCancelamento, "", TFormatoExportacaoKind.feHTML, saveDialog.FileName); break;
                }
            }
        }

        private void btnVisualizarCanc_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
            openDialog.Title = "XML Destinatário";
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);

                openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
                openDialog.Title = "XML de Cancelamento";
                openDialog.ShowDialog();
                string ArquivoCancelamento = System.IO.File.ReadAllText(openDialog.FileName);

                cfeSat.VisualizarCFeSATCancelada(Arquivo, ArquivoCancelamento, "");
            }
        }

        private void btnEditarCanc_Click(object sender, EventArgs e)
        {
            openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
            openDialog.Title = "XML Destinatário";
            openDialog.FileName = "";
            openDialog.ShowDialog();
            if (System.IO.File.Exists(openDialog.FileName))
            {
                string Arquivo = System.IO.File.ReadAllText(openDialog.FileName);

                openDialog.InitialDirectory = Application.StartupPath + "\\CopiaSeguranca";
                openDialog.Title = "XML de Cancelamento";
                openDialog.ShowDialog();
                string ArquivoCancelamento = System.IO.File.ReadAllText(openDialog.FileName);

                cfeSat.VisualizarCFeSATCancelada(Arquivo, ArquivoCancelamento, "");
            }
        }

        private void btnGerarDataset_Click(object sender, EventArgs e)
        {
            cfeSatDataset.VersaoEsquema = "ve0007";
            cfeSatDataset.ArquivoConversorXml = cfeSat.DiretorioTemplates + @"Conversor\CFeSatDataSets.xml";
            
            cfeSatDataset.Incluir();
            DadosSAT();
            DadosEmitente();
            DadosItem();
            DadosDestinatario();
            DadosPagamento();
            cfeSatDataset.Salvar();

            tbRetorno.Text = cfeSatDataset.LoteCFeSat;

        }

        public void DadosSAT()
        {
            cfeSatDataset.SetCampo("versaoDadosEnt_A03=0.07");
            cfeSatDataset.SetCampo("CNPJ_B11=" + tbCNPJSoftwareHouse.Text);
            cfeSatDataset.SetCampo("signAC_B12=aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
            cfeSatDataset.SetCampo("numeroCaixa_B14=123");

            cfeSatDataset.SetCampo("vDescSubTot_W20=");
            cfeSatDataset.SetCampo("vAcresSubtot_W21=");
            cfeSatDataset.SetCampo("vCFeLei12741_W22=1.00");

            cfeSatDataset.SetCampo("infCpl_Z02=");
        }

        public void DadosEmitente()
        {
            cfeSatDataset.SetCampo("CNPJ_C02=" + tbCNPJContribuinte.Text);
            cfeSatDataset.SetCampo("IE_C12=111111111111");
            cfeSatDataset.SetCampo("IM_C13=123123");
            cfeSatDataset.SetCampo("cRegTribISSQN_C15=");
            cfeSatDataset.SetCampo("indRatISSQN_C16=N");
        }

        public void DadosDestinatario()
        {
            cfeSatDataset.SetCampo("CNPJ_E02=10575716000170");
            cfeSatDataset.SetCampo("CPF_E03=");
            cfeSatDataset.SetCampo("xNome_E04=Fazenda");
        }

        public void DadosItem()
        {
            for (int i = 0; i < 1; i++)
            {
                cfeSatDataset.IncluirItem();
                cfeSatDataset.SetCampo("nItem_H02=" + i.ToString() + 1);
                cfeSatDataset.SetCampo("cProd_I02=0001");
                cfeSatDataset.SetCampo("cEAN_I03=0012345678905");
                cfeSatDataset.SetCampo("xProd_I04=Trib ICMS Integral Aliquota 10.00% - PIS e COFINS cod 04 - Orig 0");
                cfeSatDataset.SetCampo("NCM_I05=47061000");
                cfeSatDataset.SetCampo("CFOP_I06=5001");
                cfeSatDataset.SetCampo("uCom_I07=kg");
                cfeSatDataset.SetCampo("qCom_I08=1.0000");
                cfeSatDataset.SetCampo("vUnCom_I09=100.00");
                cfeSatDataset.SetCampo("indRegra_I11=A");
                cfeSatDataset.SetCampo("vDesc_I12=");
                cfeSatDataset.SetCampo("vOutro_I13=");
                cfeSatDataset.SetCampo("vItem12741_M02=1.00");

                cfeSatDataset.SetCampo("Orig_N06=0");
                cfeSatDataset.SetCampo("CST_N07=00");
                cfeSatDataset.SetCampo("pICMS_N08=10.00");
                cfeSatDataset.SetCampo("CSOSN_N10=");

                cfeSatDataset.SetCampo("CST_Q07=04");
                cfeSatDataset.SetCampo("vBC_Q08=");
                cfeSatDataset.SetCampo("pPIS_Q09=");
                cfeSatDataset.SetCampo("qBCProd_Q11=");
                cfeSatDataset.SetCampo("vAliqProd_Q12=");

                cfeSatDataset.SetCampo("CST_S07=04");
                cfeSatDataset.SetCampo("vBC_S08=");
                cfeSatDataset.SetCampo("pCOFINS_S09=");
                cfeSatDataset.SetCampo("qBCProd_S11=");
                cfeSatDataset.SetCampo("vAliqProd_S12=");

                cfeSatDataset.SetCampo("vBC_T02=");
                cfeSatDataset.SetCampo("pCOFINS_T03=");
                cfeSatDataset.SetCampo("qBCProd_T04=");
                cfeSatDataset.SetCampo("vAliqProd_T05=");

                cfeSatDataset.SetCampo("vDeducISSQN_U02=");
                cfeSatDataset.SetCampo("vAliq_U04=");
                cfeSatDataset.SetCampo("cMunFG_U06=");
                cfeSatDataset.SetCampo("cListServ_U07=");
                cfeSatDataset.SetCampo("cServTribMun_U08=");
                cfeSatDataset.SetCampo("cNatOp_U09=");
                cfeSatDataset.SetCampo("indIncFisc_U10=");

                cfeSatDataset.SetCampo("infAdProd_V01=");
                cfeSatDataset.SalvarItem();
            }
        }

            public void DadosPagamento()
            {
                cfeSatDataset.IncluirParte("PAGAMENTO");
                cfeSatDataset.SetCampo("cMP_WA03=01");
                cfeSatDataset.SetCampo("vMP_WA04=110.00");
                cfeSatDataset.SetCampo("cAdmC_WA05=");
                cfeSatDataset.SalvarParte("PAGAMENTO");
            }

            private void btnSaveConfig_Click(object sender, EventArgs e)
            {
                cfeSat.NomeDllSat = tbNomeDLL.Text;
                cfeSat.NomeCertificado = cbCertificado.Text;
                cfeSat.CnpjSoftwareHouse = tbCNPJSoftwareHouse.Text;
                cfeSat.CNPJContribuinte = tbCNPJContribuinte.Text;
                cfeSat.CodigoAtivacao = tbCodigoAtivacao.Text;

                cfeSat.SaveConfig(Application.StartupPath + "\\cfesatConfig.ini");
            }


            private void chModoAvancado_CheckedChanged(object sender, EventArgs e)
            {
                if (chModoAvancado.Checked)
                {
                    tabSAT.TabPages.Add(tabConfiguracao);
                    tabSAT.TabPages.Add(tabAtivacao);
                }
                else
                {
                    tabSAT.TabPages.Remove(tabConfiguracao);
                    tabSAT.TabPages.Remove(tabAtivacao);
                }
            }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            cfeSat.UtilizarEmuladorSefaz = true;
        }
    }
    public class IniFile
    {
        public string path;

        [DllImport("kernel32")]
        private static extern long WritePrivateProfileString(string section, string key, string val, string filePath);
        [DllImport("kernel32")]
        private static extern int GetPrivateProfileString(string section, string key, string def, StringBuilder retVal, int size, string filePath);

        public IniFile(string INIPath)
        {
            path = INIPath;
        }
        public void IniWriteValue(string Section, string Key, string Value)
        {
            WritePrivateProfileString(Section, Key, Value, this.path);
        }
        public string IniReadValue(string Section, string Key)
        {
            StringBuilder temp = new StringBuilder(255);
            int i = GetPrivateProfileString(Section, Key, "", temp, 255, this.path);
            return temp.ToString();

        }
    }

}
