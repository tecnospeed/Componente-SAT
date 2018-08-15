namespace DemoCFeSat
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tbRetorno = new System.Windows.Forms.TextBox();
            this.btnAtivarSat = new System.Windows.Forms.Button();
            this.btnLoadConfig = new System.Windows.Forms.Button();
            this.cbCertificado = new System.Windows.Forms.ComboBox();
            this.btnAbrirINI = new System.Windows.Forms.Button();
            this.tbCNPJSoftwareHouse = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.tbCNPJContribuinte = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.btnAssociarAssinatura = new System.Windows.Forms.Button();
            this.btnDecodeBase64 = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.edtUltimoID = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.edtUltimaSessao = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnSaveConfig = new System.Windows.Forms.Button();
            this.tbCodigoAtivacao = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.tbNomeDLL = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.tabSAT = new System.Windows.Forms.TabControl();
            this.tabAtivacao = new System.Windows.Forms.TabPage();
            this.btnConsultarStatusOperacional = new System.Windows.Forms.Button();
            this.btnConsultarSAT = new System.Windows.Forms.Button();
            this.btnTesteFim = new System.Windows.Forms.Button();
            this.btnComunicarCertificado = new System.Windows.Forms.Button();
            this.btnConfigRede = new System.Windows.Forms.Button();
            this.tabConfiguracao = new System.Windows.Forms.TabPage();
            this.btnAtualizarSAT = new System.Windows.Forms.Button();
            this.btnTrocarCodigoAtivacao = new System.Windows.Forms.Button();
            this.btnDesbloquearSAT = new System.Windows.Forms.Button();
            this.btnBloquearSAT = new System.Windows.Forms.Button();
            this.btnExtrairLogs = new System.Windows.Forms.Button();
            this.tabImpressao = new System.Windows.Forms.TabPage();
            this.btnEditarCanc = new System.Windows.Forms.Button();
            this.btnVisualizarCanc = new System.Windows.Forms.Button();
            this.btnExportarCanc = new System.Windows.Forms.Button();
            this.btnImprimirCanc = new System.Windows.Forms.Button();
            this.btnEditar = new System.Windows.Forms.Button();
            this.btnVisualizar = new System.Windows.Forms.Button();
            this.btnExportar = new System.Windows.Forms.Button();
            this.btnImprimir = new System.Windows.Forms.Button();
            this.openDialog = new System.Windows.Forms.OpenFileDialog();
            this.label8 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.chModoAvancado = new System.Windows.Forms.CheckBox();
            this.btnGerarDataset = new System.Windows.Forms.Button();
            this.btnManualSat = new System.Windows.Forms.Button();
            this.btnConverterTX2toXML = new System.Windows.Forms.Button();
            this.btnConsultarNumeroSessao = new System.Windows.Forms.Button();
            this.btnCancelarVenda = new System.Windows.Forms.Button();
            this.btnEnviarVenda = new System.Windows.Forms.Button();
            this.saveDialog = new System.Windows.Forms.SaveFileDialog();
            this.groupBox1.SuspendLayout();
            this.tabSAT.SuspendLayout();
            this.tabAtivacao.SuspendLayout();
            this.tabConfiguracao.SuspendLayout();
            this.tabImpressao.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // tbRetorno
            // 
            this.tbRetorno.Location = new System.Drawing.Point(2, 349);
            this.tbRetorno.Multiline = true;
            this.tbRetorno.Name = "tbRetorno";
            this.tbRetorno.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.tbRetorno.Size = new System.Drawing.Size(969, 234);
            this.tbRetorno.TabIndex = 0;
            // 
            // btnAtivarSat
            // 
            this.btnAtivarSat.Location = new System.Drawing.Point(6, 6);
            this.btnAtivarSat.Name = "btnAtivarSat";
            this.btnAtivarSat.Size = new System.Drawing.Size(223, 23);
            this.btnAtivarSat.TabIndex = 2;
            this.btnAtivarSat.Text = "Ativar Sat";
            this.btnAtivarSat.UseVisualStyleBackColor = true;
            this.btnAtivarSat.Click += new System.EventHandler(this.btnAtivarSat_Click);
            // 
            // btnLoadConfig
            // 
            this.btnLoadConfig.Location = new System.Drawing.Point(150, 161);
            this.btnLoadConfig.Name = "btnLoadConfig";
            this.btnLoadConfig.Size = new System.Drawing.Size(145, 24);
            this.btnLoadConfig.TabIndex = 3;
            this.btnLoadConfig.Text = "1.1 - Carregar Configuração";
            this.btnLoadConfig.UseVisualStyleBackColor = true;
            this.btnLoadConfig.Click += new System.EventHandler(this.btnLoadConfig_Click);
            // 
            // cbCertificado
            // 
            this.cbCertificado.FormattingEnabled = true;
            this.cbCertificado.Location = new System.Drawing.Point(6, 32);
            this.cbCertificado.Name = "cbCertificado";
            this.cbCertificado.Size = new System.Drawing.Size(685, 21);
            this.cbCertificado.TabIndex = 4;
            this.cbCertificado.SelectedIndexChanged += new System.EventHandler(this.cbCertificado_SelectedIndexChanged);
            // 
            // btnAbrirINI
            // 
            this.btnAbrirINI.Location = new System.Drawing.Point(6, 162);
            this.btnAbrirINI.Name = "btnAbrirINI";
            this.btnAbrirINI.Size = new System.Drawing.Size(138, 23);
            this.btnAbrirINI.TabIndex = 5;
            this.btnAbrirINI.Text = "1.0 - Abrir Arquivo INI";
            this.btnAbrirINI.UseVisualStyleBackColor = true;
            this.btnAbrirINI.Click += new System.EventHandler(this.btnAbrirINI_Click);
            // 
            // tbCNPJSoftwareHouse
            // 
            this.tbCNPJSoftwareHouse.Location = new System.Drawing.Point(523, 60);
            this.tbCNPJSoftwareHouse.Name = "tbCNPJSoftwareHouse";
            this.tbCNPJSoftwareHouse.Size = new System.Drawing.Size(168, 20);
            this.tbCNPJSoftwareHouse.TabIndex = 9;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(407, 63);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(116, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "CNPJ Software House:";
            // 
            // tbCNPJContribuinte
            // 
            this.tbCNPJContribuinte.Location = new System.Drawing.Point(103, 60);
            this.tbCNPJContribuinte.Name = "tbCNPJContribuinte";
            this.tbCNPJContribuinte.Size = new System.Drawing.Size(168, 20);
            this.tbCNPJContribuinte.TabIndex = 11;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Cursor = System.Windows.Forms.Cursors.Default;
            this.label3.Location = new System.Drawing.Point(6, 63);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(96, 13);
            this.label3.TabIndex = 10;
            this.label3.Text = "CNPJ Contribuinte:";
            // 
            // btnAssociarAssinatura
            // 
            this.btnAssociarAssinatura.Location = new System.Drawing.Point(6, 64);
            this.btnAssociarAssinatura.Name = "btnAssociarAssinatura";
            this.btnAssociarAssinatura.Size = new System.Drawing.Size(223, 23);
            this.btnAssociarAssinatura.TabIndex = 12;
            this.btnAssociarAssinatura.Text = "Associar Assinatura";
            this.btnAssociarAssinatura.UseVisualStyleBackColor = true;
            this.btnAssociarAssinatura.Click += new System.EventHandler(this.button1_Click);
            // 
            // btnDecodeBase64
            // 
            this.btnDecodeBase64.Location = new System.Drawing.Point(616, 550);
            this.btnDecodeBase64.Name = "btnDecodeBase64";
            this.btnDecodeBase64.Size = new System.Drawing.Size(355, 33);
            this.btnDecodeBase64.TabIndex = 13;
            this.btnDecodeBase64.Text = "Retorno - Decode Base64";
            this.btnDecodeBase64.UseVisualStyleBackColor = true;
            this.btnDecodeBase64.Click += new System.EventHandler(this.btnDecodeBase64_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.edtUltimoID);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.edtUltimaSessao);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.btnSaveConfig);
            this.groupBox1.Controls.Add(this.tbCodigoAtivacao);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.tbNomeDLL);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.btnLoadConfig);
            this.groupBox1.Controls.Add(this.btnAbrirINI);
            this.groupBox1.Controls.Add(this.tbCNPJContribuinte);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.cbCertificado);
            this.groupBox1.Controls.Add(this.tbCNPJSoftwareHouse);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(2, 15);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(703, 191);
            this.groupBox1.TabIndex = 15;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Configurações";
            // 
            // edtUltimoID
            // 
            this.edtUltimoID.Location = new System.Drawing.Point(523, 129);
            this.edtUltimoID.Name = "edtUltimoID";
            this.edtUltimoID.Size = new System.Drawing.Size(168, 20);
            this.edtUltimoID.TabIndex = 16;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(417, 132);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(106, 13);
            this.label4.TabIndex = 15;
            this.label4.Text = "Último ID Autorizado:";
            // 
            // edtUltimaSessao
            // 
            this.edtUltimaSessao.Location = new System.Drawing.Point(103, 128);
            this.edtUltimaSessao.Name = "edtUltimaSessao";
            this.edtUltimaSessao.Size = new System.Drawing.Size(168, 20);
            this.edtUltimaSessao.TabIndex = 14;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(25, 131);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 13);
            this.label1.TabIndex = 13;
            this.label1.Text = "Última Sessão:";
            // 
            // btnSaveConfig
            // 
            this.btnSaveConfig.Location = new System.Drawing.Point(550, 161);
            this.btnSaveConfig.Name = "btnSaveConfig";
            this.btnSaveConfig.Size = new System.Drawing.Size(141, 24);
            this.btnSaveConfig.TabIndex = 12;
            this.btnSaveConfig.Text = "Salvar Configuração";
            this.btnSaveConfig.UseVisualStyleBackColor = true;
            this.btnSaveConfig.Click += new System.EventHandler(this.btnSaveConfig_Click);
            // 
            // tbCodigoAtivacao
            // 
            this.tbCodigoAtivacao.Location = new System.Drawing.Point(103, 94);
            this.tbCodigoAtivacao.Name = "tbCodigoAtivacao";
            this.tbCodigoAtivacao.Size = new System.Drawing.Size(168, 20);
            this.tbCodigoAtivacao.TabIndex = 9;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(14, 97);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(88, 13);
            this.label7.TabIndex = 8;
            this.label7.Text = "Código Ativação:";
            this.label7.Click += new System.EventHandler(this.label7_Click);
            // 
            // tbNomeDLL
            // 
            this.tbNomeDLL.Location = new System.Drawing.Point(523, 94);
            this.tbNomeDLL.Name = "tbNomeDLL";
            this.tbNomeDLL.Size = new System.Drawing.Size(168, 20);
            this.tbNomeDLL.TabIndex = 7;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(447, 96);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(76, 13);
            this.label6.TabIndex = 6;
            this.label6.Text = "Nome da DLL:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 16);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(105, 13);
            this.label5.TabIndex = 5;
            this.label5.Text = "Lista de Certificados:";
            // 
            // tabSAT
            // 
            this.tabSAT.Controls.Add(this.tabAtivacao);
            this.tabSAT.Controls.Add(this.tabConfiguracao);
            this.tabSAT.Controls.Add(this.tabImpressao);
            this.tabSAT.Location = new System.Drawing.Point(2, 212);
            this.tabSAT.Name = "tabSAT";
            this.tabSAT.SelectedIndex = 0;
            this.tabSAT.Size = new System.Drawing.Size(703, 118);
            this.tabSAT.TabIndex = 16;
            // 
            // tabAtivacao
            // 
            this.tabAtivacao.Controls.Add(this.btnConsultarStatusOperacional);
            this.tabAtivacao.Controls.Add(this.btnConsultarSAT);
            this.tabAtivacao.Controls.Add(this.btnTesteFim);
            this.tabAtivacao.Controls.Add(this.btnComunicarCertificado);
            this.tabAtivacao.Controls.Add(this.btnConfigRede);
            this.tabAtivacao.Controls.Add(this.btnAtivarSat);
            this.tabAtivacao.Controls.Add(this.btnAssociarAssinatura);
            this.tabAtivacao.Location = new System.Drawing.Point(4, 22);
            this.tabAtivacao.Name = "tabAtivacao";
            this.tabAtivacao.Padding = new System.Windows.Forms.Padding(3);
            this.tabAtivacao.Size = new System.Drawing.Size(695, 92);
            this.tabAtivacao.TabIndex = 0;
            this.tabAtivacao.Text = "Ativação";
            this.tabAtivacao.UseVisualStyleBackColor = true;
            // 
            // btnConsultarStatusOperacional
            // 
            this.btnConsultarStatusOperacional.Location = new System.Drawing.Point(464, 6);
            this.btnConsultarStatusOperacional.Name = "btnConsultarStatusOperacional";
            this.btnConsultarStatusOperacional.Size = new System.Drawing.Size(223, 23);
            this.btnConsultarStatusOperacional.TabIndex = 16;
            this.btnConsultarStatusOperacional.Text = "Consultar Status Operacional";
            this.btnConsultarStatusOperacional.UseVisualStyleBackColor = true;
            this.btnConsultarStatusOperacional.Click += new System.EventHandler(this.btnConsultarStatusOperacional_Click);
            // 
            // btnConsultarSAT
            // 
            this.btnConsultarSAT.Location = new System.Drawing.Point(235, 63);
            this.btnConsultarSAT.Name = "btnConsultarSAT";
            this.btnConsultarSAT.Size = new System.Drawing.Size(223, 23);
            this.btnConsultarSAT.TabIndex = 15;
            this.btnConsultarSAT.Text = "Consultar SAT";
            this.btnConsultarSAT.UseVisualStyleBackColor = true;
            this.btnConsultarSAT.Click += new System.EventHandler(this.btnConsultarSAT_Click);
            // 
            // btnTesteFim
            // 
            this.btnTesteFim.Location = new System.Drawing.Point(235, 35);
            this.btnTesteFim.Name = "btnTesteFim";
            this.btnTesteFim.Size = new System.Drawing.Size(223, 23);
            this.btnTesteFim.TabIndex = 14;
            this.btnTesteFim.Text = "Teste Fim a Fim";
            this.btnTesteFim.UseVisualStyleBackColor = true;
            this.btnTesteFim.Click += new System.EventHandler(this.btnTesteFim_Click);
            // 
            // btnComunicarCertificado
            // 
            this.btnComunicarCertificado.Location = new System.Drawing.Point(235, 6);
            this.btnComunicarCertificado.Name = "btnComunicarCertificado";
            this.btnComunicarCertificado.Size = new System.Drawing.Size(223, 23);
            this.btnComunicarCertificado.TabIndex = 13;
            this.btnComunicarCertificado.Text = "Comunicar Certificado ICP Brasil";
            this.btnComunicarCertificado.UseVisualStyleBackColor = true;
            this.btnComunicarCertificado.Click += new System.EventHandler(this.btnComunicarCertificado_Click);
            // 
            // btnConfigRede
            // 
            this.btnConfigRede.Location = new System.Drawing.Point(6, 35);
            this.btnConfigRede.Name = "btnConfigRede";
            this.btnConfigRede.Size = new System.Drawing.Size(223, 23);
            this.btnConfigRede.TabIndex = 3;
            this.btnConfigRede.Text = "Configurar Interface de Rede";
            this.btnConfigRede.UseVisualStyleBackColor = true;
            this.btnConfigRede.Click += new System.EventHandler(this.btnConfigRede_Click);
            // 
            // tabConfiguracao
            // 
            this.tabConfiguracao.Controls.Add(this.btnAtualizarSAT);
            this.tabConfiguracao.Controls.Add(this.btnTrocarCodigoAtivacao);
            this.tabConfiguracao.Controls.Add(this.btnDesbloquearSAT);
            this.tabConfiguracao.Controls.Add(this.btnBloquearSAT);
            this.tabConfiguracao.Controls.Add(this.btnExtrairLogs);
            this.tabConfiguracao.Location = new System.Drawing.Point(4, 22);
            this.tabConfiguracao.Name = "tabConfiguracao";
            this.tabConfiguracao.Padding = new System.Windows.Forms.Padding(3);
            this.tabConfiguracao.Size = new System.Drawing.Size(695, 92);
            this.tabConfiguracao.TabIndex = 1;
            this.tabConfiguracao.Text = "Configuração";
            this.tabConfiguracao.UseVisualStyleBackColor = true;
            // 
            // btnAtualizarSAT
            // 
            this.btnAtualizarSAT.Location = new System.Drawing.Point(235, 35);
            this.btnAtualizarSAT.Name = "btnAtualizarSAT";
            this.btnAtualizarSAT.Size = new System.Drawing.Size(223, 23);
            this.btnAtualizarSAT.TabIndex = 7;
            this.btnAtualizarSAT.Text = "Atualizar Software SAT";
            this.btnAtualizarSAT.UseVisualStyleBackColor = true;
            this.btnAtualizarSAT.Click += new System.EventHandler(this.btnAtualizarSAT_Click);
            // 
            // btnTrocarCodigoAtivacao
            // 
            this.btnTrocarCodigoAtivacao.Location = new System.Drawing.Point(235, 6);
            this.btnTrocarCodigoAtivacao.Name = "btnTrocarCodigoAtivacao";
            this.btnTrocarCodigoAtivacao.Size = new System.Drawing.Size(223, 23);
            this.btnTrocarCodigoAtivacao.TabIndex = 6;
            this.btnTrocarCodigoAtivacao.Text = "Trocar Código de Ativação";
            this.btnTrocarCodigoAtivacao.UseVisualStyleBackColor = true;
            this.btnTrocarCodigoAtivacao.Click += new System.EventHandler(this.btnTrocarCodigoAtivacao_Click);
            // 
            // btnDesbloquearSAT
            // 
            this.btnDesbloquearSAT.Location = new System.Drawing.Point(6, 63);
            this.btnDesbloquearSAT.Name = "btnDesbloquearSAT";
            this.btnDesbloquearSAT.Size = new System.Drawing.Size(223, 23);
            this.btnDesbloquearSAT.TabIndex = 5;
            this.btnDesbloquearSAT.Text = "Desbloquear SAT";
            this.btnDesbloquearSAT.UseVisualStyleBackColor = true;
            this.btnDesbloquearSAT.Click += new System.EventHandler(this.btnDesbloquearSAT_Click);
            // 
            // btnBloquearSAT
            // 
            this.btnBloquearSAT.Location = new System.Drawing.Point(6, 35);
            this.btnBloquearSAT.Name = "btnBloquearSAT";
            this.btnBloquearSAT.Size = new System.Drawing.Size(223, 23);
            this.btnBloquearSAT.TabIndex = 4;
            this.btnBloquearSAT.Text = "Bloquear SAT";
            this.btnBloquearSAT.UseVisualStyleBackColor = true;
            this.btnBloquearSAT.Click += new System.EventHandler(this.btnBloquearSAT_Click);
            // 
            // btnExtrairLogs
            // 
            this.btnExtrairLogs.Location = new System.Drawing.Point(6, 6);
            this.btnExtrairLogs.Name = "btnExtrairLogs";
            this.btnExtrairLogs.Size = new System.Drawing.Size(223, 23);
            this.btnExtrairLogs.TabIndex = 3;
            this.btnExtrairLogs.Text = "Extrair Logs";
            this.btnExtrairLogs.UseVisualStyleBackColor = true;
            this.btnExtrairLogs.Click += new System.EventHandler(this.btnExtrairLogs_Click);
            // 
            // tabImpressao
            // 
            this.tabImpressao.Controls.Add(this.btnEditarCanc);
            this.tabImpressao.Controls.Add(this.btnVisualizarCanc);
            this.tabImpressao.Controls.Add(this.btnExportarCanc);
            this.tabImpressao.Controls.Add(this.btnImprimirCanc);
            this.tabImpressao.Controls.Add(this.btnEditar);
            this.tabImpressao.Controls.Add(this.btnVisualizar);
            this.tabImpressao.Controls.Add(this.btnExportar);
            this.tabImpressao.Controls.Add(this.btnImprimir);
            this.tabImpressao.Location = new System.Drawing.Point(4, 22);
            this.tabImpressao.Name = "tabImpressao";
            this.tabImpressao.Size = new System.Drawing.Size(695, 92);
            this.tabImpressao.TabIndex = 2;
            this.tabImpressao.Text = "Impressão";
            this.tabImpressao.UseVisualStyleBackColor = true;
            // 
            // btnEditarCanc
            // 
            this.btnEditarCanc.Location = new System.Drawing.Point(464, 35);
            this.btnEditarCanc.Name = "btnEditarCanc";
            this.btnEditarCanc.Size = new System.Drawing.Size(223, 23);
            this.btnEditarCanc.TabIndex = 11;
            this.btnEditarCanc.Text = "Editar Nota Cancelada";
            this.btnEditarCanc.UseVisualStyleBackColor = true;
            this.btnEditarCanc.Click += new System.EventHandler(this.btnEditarCanc_Click);
            // 
            // btnVisualizarCanc
            // 
            this.btnVisualizarCanc.Location = new System.Drawing.Point(464, 6);
            this.btnVisualizarCanc.Name = "btnVisualizarCanc";
            this.btnVisualizarCanc.Size = new System.Drawing.Size(223, 23);
            this.btnVisualizarCanc.TabIndex = 10;
            this.btnVisualizarCanc.Text = "Visualizar Nota Cancelada";
            this.btnVisualizarCanc.UseVisualStyleBackColor = true;
            this.btnVisualizarCanc.Click += new System.EventHandler(this.btnVisualizarCanc_Click);
            // 
            // btnExportarCanc
            // 
            this.btnExportarCanc.Location = new System.Drawing.Point(235, 66);
            this.btnExportarCanc.Name = "btnExportarCanc";
            this.btnExportarCanc.Size = new System.Drawing.Size(223, 23);
            this.btnExportarCanc.TabIndex = 9;
            this.btnExportarCanc.Text = "Exportar Nota Cancelada";
            this.btnExportarCanc.UseVisualStyleBackColor = true;
            this.btnExportarCanc.Click += new System.EventHandler(this.btnExportarCanc_Click);
            // 
            // btnImprimirCanc
            // 
            this.btnImprimirCanc.Location = new System.Drawing.Point(235, 35);
            this.btnImprimirCanc.Name = "btnImprimirCanc";
            this.btnImprimirCanc.Size = new System.Drawing.Size(223, 23);
            this.btnImprimirCanc.TabIndex = 8;
            this.btnImprimirCanc.Text = "Imprimir Nota Cancelada";
            this.btnImprimirCanc.UseVisualStyleBackColor = true;
            this.btnImprimirCanc.Click += new System.EventHandler(this.btnImprimirCanc_Click);
            // 
            // btnEditar
            // 
            this.btnEditar.Location = new System.Drawing.Point(235, 6);
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(223, 23);
            this.btnEditar.TabIndex = 7;
            this.btnEditar.Text = "4.3 - Editar";
            this.btnEditar.UseVisualStyleBackColor = true;
            this.btnEditar.Click += new System.EventHandler(this.btnEditar_Click);
            // 
            // btnVisualizar
            // 
            this.btnVisualizar.Location = new System.Drawing.Point(6, 66);
            this.btnVisualizar.Name = "btnVisualizar";
            this.btnVisualizar.Size = new System.Drawing.Size(223, 23);
            this.btnVisualizar.TabIndex = 6;
            this.btnVisualizar.Text = "4.2 - Visualizar";
            this.btnVisualizar.UseVisualStyleBackColor = true;
            this.btnVisualizar.Click += new System.EventHandler(this.btnVisualizar_Click);
            // 
            // btnExportar
            // 
            this.btnExportar.Location = new System.Drawing.Point(6, 35);
            this.btnExportar.Name = "btnExportar";
            this.btnExportar.Size = new System.Drawing.Size(223, 23);
            this.btnExportar.TabIndex = 5;
            this.btnExportar.Text = "4.1 - Exportar";
            this.btnExportar.UseVisualStyleBackColor = true;
            this.btnExportar.Click += new System.EventHandler(this.btnExportar_Click);
            // 
            // btnImprimir
            // 
            this.btnImprimir.Location = new System.Drawing.Point(6, 6);
            this.btnImprimir.Name = "btnImprimir";
            this.btnImprimir.Size = new System.Drawing.Size(223, 23);
            this.btnImprimir.TabIndex = 4;
            this.btnImprimir.Text = "4.0 - Imprimir";
            this.btnImprimir.UseVisualStyleBackColor = true;
            this.btnImprimir.Click += new System.EventHandler(this.btnImprimir_Click);
            // 
            // openDialog
            // 
            this.openDialog.FileName = "openFileDialog1";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(-1, 333);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(90, 13);
            this.label8.TabIndex = 17;
            this.label8.Text = "Retorno do SAT: ";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.chModoAvancado);
            this.groupBox2.Controls.Add(this.btnGerarDataset);
            this.groupBox2.Controls.Add(this.btnManualSat);
            this.groupBox2.Controls.Add(this.btnConverterTX2toXML);
            this.groupBox2.Controls.Add(this.btnConsultarNumeroSessao);
            this.groupBox2.Controls.Add(this.btnCancelarVenda);
            this.groupBox2.Controls.Add(this.btnEnviarVenda);
            this.groupBox2.Location = new System.Drawing.Point(721, 15);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(250, 283);
            this.groupBox2.TabIndex = 19;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Vendas";
            // 
            // chModoAvancado
            // 
            this.chModoAvancado.AutoSize = true;
            this.chModoAvancado.Location = new System.Drawing.Point(72, 244);
            this.chModoAvancado.Name = "chModoAvancado";
            this.chModoAvancado.Size = new System.Drawing.Size(105, 17);
            this.chModoAvancado.TabIndex = 23;
            this.chModoAvancado.Text = "Modo Avançado";
            this.chModoAvancado.UseVisualStyleBackColor = true;
            this.chModoAvancado.CheckedChanged += new System.EventHandler(this.chModoAvancado_CheckedChanged);
            // 
            // btnGerarDataset
            // 
            this.btnGerarDataset.Location = new System.Drawing.Point(6, 55);
            this.btnGerarDataset.Name = "btnGerarDataset";
            this.btnGerarDataset.Size = new System.Drawing.Size(233, 23);
            this.btnGerarDataset.TabIndex = 22;
            this.btnGerarDataset.Text = "2.1 - Gerar via Dataset";
            this.btnGerarDataset.UseVisualStyleBackColor = true;
            this.btnGerarDataset.Click += new System.EventHandler(this.btnGerarDataset_Click);
            // 
            // btnManualSat
            // 
            this.btnManualSat.Location = new System.Drawing.Point(6, 203);
            this.btnManualSat.Name = "btnManualSat";
            this.btnManualSat.Size = new System.Drawing.Size(233, 23);
            this.btnManualSat.TabIndex = 21;
            this.btnManualSat.Text = "Manual Online CFe S@T";
            this.btnManualSat.UseVisualStyleBackColor = true;
            this.btnManualSat.Click += new System.EventHandler(this.btnManualSat_Click);
            // 
            // btnConverterTX2toXML
            // 
            this.btnConverterTX2toXML.Location = new System.Drawing.Point(6, 16);
            this.btnConverterTX2toXML.Name = "btnConverterTX2toXML";
            this.btnConverterTX2toXML.Size = new System.Drawing.Size(233, 23);
            this.btnConverterTX2toXML.TabIndex = 20;
            this.btnConverterTX2toXML.Text = "2.0 - Gerar via TX2";
            this.btnConverterTX2toXML.UseVisualStyleBackColor = true;
            this.btnConverterTX2toXML.Click += new System.EventHandler(this.btnConverterTX2toXML_Click);
            // 
            // btnConsultarNumeroSessao
            // 
            this.btnConsultarNumeroSessao.Location = new System.Drawing.Point(6, 165);
            this.btnConsultarNumeroSessao.Name = "btnConsultarNumeroSessao";
            this.btnConsultarNumeroSessao.Size = new System.Drawing.Size(233, 23);
            this.btnConsultarNumeroSessao.TabIndex = 19;
            this.btnConsultarNumeroSessao.Text = "Consultar Número Sessão";
            this.btnConsultarNumeroSessao.UseVisualStyleBackColor = true;
            this.btnConsultarNumeroSessao.Click += new System.EventHandler(this.btnConsultarNumeroSessao_Click);
            // 
            // btnCancelarVenda
            // 
            this.btnCancelarVenda.Location = new System.Drawing.Point(6, 129);
            this.btnCancelarVenda.Name = "btnCancelarVenda";
            this.btnCancelarVenda.Size = new System.Drawing.Size(233, 23);
            this.btnCancelarVenda.TabIndex = 18;
            this.btnCancelarVenda.Text = "Cancelar Última Venda";
            this.btnCancelarVenda.UseVisualStyleBackColor = true;
            this.btnCancelarVenda.Click += new System.EventHandler(this.btnCancelarVenda_Click);
            // 
            // btnEnviarVenda
            // 
            this.btnEnviarVenda.Location = new System.Drawing.Point(6, 91);
            this.btnEnviarVenda.Name = "btnEnviarVenda";
            this.btnEnviarVenda.Size = new System.Drawing.Size(233, 23);
            this.btnEnviarVenda.TabIndex = 17;
            this.btnEnviarVenda.Text = "3 - Enviar Dados Venda";
            this.btnEnviarVenda.UseVisualStyleBackColor = true;
            this.btnEnviarVenda.Click += new System.EventHandler(this.btnEnviarVenda_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(979, 595);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.tabSAT);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnDecodeBase64);
            this.Controls.Add(this.tbRetorno);
            this.Name = "Form1";
            this.Text = "Demo CFe S@T";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.tabSAT.ResumeLayout(false);
            this.tabAtivacao.ResumeLayout(false);
            this.tabConfiguracao.ResumeLayout(false);
            this.tabImpressao.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tbRetorno;
        private System.Windows.Forms.Button btnAtivarSat;
        private System.Windows.Forms.Button btnLoadConfig;
        private System.Windows.Forms.ComboBox cbCertificado;
        private System.Windows.Forms.Button btnAbrirINI;
        private System.Windows.Forms.TextBox tbCNPJSoftwareHouse;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tbCNPJContribuinte;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnAssociarAssinatura;
        private System.Windows.Forms.Button btnDecodeBase64;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnSaveConfig;
        private System.Windows.Forms.TextBox tbCodigoAtivacao;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox tbNomeDLL;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TabControl tabSAT;
        private System.Windows.Forms.TabPage tabAtivacao;
        private System.Windows.Forms.Button btnConfigRede;
        private System.Windows.Forms.TabPage tabConfiguracao;
        private System.Windows.Forms.TabPage tabImpressao;
        private System.Windows.Forms.OpenFileDialog openDialog;
        private System.Windows.Forms.Button btnComunicarCertificado;
        private System.Windows.Forms.Button btnConsultarSAT;
        private System.Windows.Forms.Button btnTesteFim;
        private System.Windows.Forms.Button btnConsultarStatusOperacional;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnEnviarVenda;
        private System.Windows.Forms.Button btnCancelarVenda;
        private System.Windows.Forms.Button btnConsultarNumeroSessao;
        private System.Windows.Forms.Button btnConverterTX2toXML;
        private System.Windows.Forms.Button btnManualSat;
        private System.Windows.Forms.Button btnExtrairLogs;
        private System.Windows.Forms.Button btnBloquearSAT;
        private System.Windows.Forms.Button btnDesbloquearSAT;
        private System.Windows.Forms.Button btnTrocarCodigoAtivacao;
        private System.Windows.Forms.Button btnAtualizarSAT;
        private System.Windows.Forms.Button btnVisualizar;
        private System.Windows.Forms.Button btnExportar;
        private System.Windows.Forms.Button btnImprimir;
        private System.Windows.Forms.SaveFileDialog saveDialog;
        private System.Windows.Forms.Button btnEditarCanc;
        private System.Windows.Forms.Button btnVisualizarCanc;
        private System.Windows.Forms.Button btnExportarCanc;
        private System.Windows.Forms.Button btnImprimirCanc;
        private System.Windows.Forms.Button btnEditar;
        private System.Windows.Forms.Button btnGerarDataset;
        private System.Windows.Forms.CheckBox chModoAvancado;
        private System.Windows.Forms.TextBox edtUltimoID;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox edtUltimaSessao;
        private System.Windows.Forms.Label label1;
    }
}

