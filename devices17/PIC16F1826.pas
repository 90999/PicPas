unit PIC16F1826;

// Define hardware
{$SET PIC_MODEL    = 'PIC16F1826'}
{$SET PIC_MAXFREQ  = 32000000}
{$SET PIC_NPINS    = 18}
{$SET PIC_NUMBANKS = 32}
{$SET PIC_NUMPAGES = 1}
{$SET PIC_MAXFLASH = 2048}

interface
var
  INDF0               : byte absolute $0000;
  INDF1               : byte absolute $0001;
  PCL                 : byte absolute $0002;
  STATUS              : byte absolute $0003;
  STATUS_TO           : bit  absolute STATUS.6;
  STATUS_PD           : bit  absolute STATUS.5;
  STATUS_Z            : bit  absolute STATUS.4;
  STATUS_DC           : bit  absolute STATUS.3;
  STATUS_C            : bit  absolute STATUS.2;
  FSR0L               : byte absolute $0004;
  FSR0H               : byte absolute $0005;
  FSR1L               : byte absolute $0006;
  FSR1H               : byte absolute $0007;
  BSR                 : byte absolute $0008;
  BSR_BSR4            : bit  absolute BSR.4;
  BSR_BSR3            : bit  absolute BSR.3;
  BSR_BSR2            : bit  absolute BSR.2;
  BSR_BSR1            : bit  absolute BSR.1;
  BSR_BSR0            : bit  absolute BSR.0;
  WREG                : byte absolute $0009;
  PCLATH              : byte absolute $000A;
  INTCON              : byte absolute $000B;
  INTCON_GIE          : bit  absolute INTCON.7;
  INTCON_PEIE         : bit  absolute INTCON.6;
  INTCON_TMR0IE       : bit  absolute INTCON.5;
  INTCON_INTE         : bit  absolute INTCON.4;
  INTCON_IOCIE        : bit  absolute INTCON.3;
  INTCON_TMR0IF       : bit  absolute INTCON.2;
  INTCON_INTF         : bit  absolute INTCON.1;
  INTCON_IOCIF        : bit  absolute INTCON.0;
  PORTA               : byte absolute $000C;
  PORTA_RA7           : bit  absolute PORTA.7;
  PORTA_RA6           : bit  absolute PORTA.6;
  PORTA_RA5           : bit  absolute PORTA.5;
  PORTA_RA4           : bit  absolute PORTA.4;
  PORTA_RA3           : bit  absolute PORTA.3;
  PORTA_RA2           : bit  absolute PORTA.2;
  PORTA_RA1           : bit  absolute PORTA.1;
  PORTA_RA0           : bit  absolute PORTA.0;
  PORTB               : byte absolute $000D;
  PORTB_RB7           : bit  absolute PORTB.7;
  PORTB_RB6           : bit  absolute PORTB.6;
  PORTB_RB5           : bit  absolute PORTB.5;
  PORTB_RB4           : bit  absolute PORTB.4;
  PORTB_RB3           : bit  absolute PORTB.3;
  PORTB_RB2           : bit  absolute PORTB.2;
  PORTB_RB1           : bit  absolute PORTB.1;
  PORTB_RB0           : bit  absolute PORTB.0;
  PIR1                : byte absolute $0011;
  PIR1_TMR1GIF        : bit  absolute PIR1.7;
  PIR1_ADIF           : bit  absolute PIR1.6;
  PIR1_RCIF           : bit  absolute PIR1.5;
  PIR1_TXIF           : bit  absolute PIR1.4;
  PIR1_SSP1IF         : bit  absolute PIR1.3;
  PIR1_CCP1IF         : bit  absolute PIR1.2;
  PIR1_TMR2IF         : bit  absolute PIR1.1;
  PIR1_TMR1IF         : bit  absolute PIR1.0;
  PIR2                : byte absolute $0012;
  PIR2_OSFIF          : bit  absolute PIR2.5;
  PIR2_C2IF           : bit  absolute PIR2.4;
  PIR2_C1IF           : bit  absolute PIR2.3;
  PIR2_EEIF           : bit  absolute PIR2.2;
  PIR2_BCL1IF         : bit  absolute PIR2.1;
  TMR0                : byte absolute $0015;
  TMR1L               : byte absolute $0016;
  TMR1H               : byte absolute $0017;
  T1CON               : byte absolute $0018;
  T1CON_TMR1CS1       : bit  absolute T1CON.7;
  T1CON_TMR1CS0       : bit  absolute T1CON.6;
  T1CON_T1CKPS1       : bit  absolute T1CON.5;
  T1CON_T1CKPS0       : bit  absolute T1CON.4;
  T1CON_T1OSCEN       : bit  absolute T1CON.3;
  T1CON_T1SYNC        : bit  absolute T1CON.2;
  T1CON_TMR1ON        : bit  absolute T1CON.1;
  T1GCON              : byte absolute $0019;
  T1GCON_TMR1GE       : bit  absolute T1GCON.7;
  T1GCON_T1GPOL       : bit  absolute T1GCON.6;
  T1GCON_T1GTM        : bit  absolute T1GCON.5;
  T1GCON_T1GSPM       : bit  absolute T1GCON.4;
  T1GCON_T1GGO        : bit  absolute T1GCON.3;
  T1GCON_T1GVAL       : bit  absolute T1GCON.2;
  T1GCON_T1GSS1       : bit  absolute T1GCON.1;
  T1GCON_T1GSS0       : bit  absolute T1GCON.0;
  TMR2                : byte absolute $001A;
  PR2                 : byte absolute $001B;
  T2CON               : byte absolute $001C;
  T2CON_T2OUTPS3      : bit  absolute T2CON.6;
  T2CON_T2OUTPS2      : bit  absolute T2CON.5;
  T2CON_T2OUTPS1      : bit  absolute T2CON.4;
  T2CON_T2OUTPS0      : bit  absolute T2CON.3;
  T2CON_TMR2ON        : bit  absolute T2CON.2;
  T2CON_T2CKPS1       : bit  absolute T2CON.1;
  T2CON_T2CKPS0       : bit  absolute T2CON.0;
  CPSCON0             : byte absolute $001E;
  CPSCON0_CPSON       : bit  absolute CPSCON0.7;
  CPSCON0_CPSRNG1     : bit  absolute CPSCON0.6;
  CPSCON0_CPSRNG0     : bit  absolute CPSCON0.5;
  CPSCON0_CPSOUT      : bit  absolute CPSCON0.4;
  CPSCON0_T0XCS       : bit  absolute CPSCON0.3;
  CPSCON1             : byte absolute $001F;
  CPSCON1_CPSCH3      : bit  absolute CPSCON1.3;
  CPSCON1_CPSCH2      : bit  absolute CPSCON1.2;
  CPSCON1_CPSCH1      : bit  absolute CPSCON1.1;
  CPSCON1_CPSCH0      : bit  absolute CPSCON1.0;
  TRISA               : byte absolute $008C;
  TRISA_TRISA7        : bit  absolute TRISA.7;
  TRISA_TRISA6        : bit  absolute TRISA.6;
  TRISA_TRISA5        : bit  absolute TRISA.5;
  TRISA_TRISA4        : bit  absolute TRISA.4;
  TRISA_TRISA3        : bit  absolute TRISA.3;
  TRISA_TRISA2        : bit  absolute TRISA.2;
  TRISA_TRISA1        : bit  absolute TRISA.1;
  TRISA_TRISA0        : bit  absolute TRISA.0;
  TRISB               : byte absolute $008D;
  TRISB_TRISB7        : bit  absolute TRISB.7;
  TRISB_TRISB6        : bit  absolute TRISB.6;
  TRISB_TRISB5        : bit  absolute TRISB.5;
  TRISB_TRISB4        : bit  absolute TRISB.4;
  TRISB_TRISB3        : bit  absolute TRISB.3;
  TRISB_TRISB2        : bit  absolute TRISB.2;
  TRISB_TRISB1        : bit  absolute TRISB.1;
  TRISB_TRISB0        : bit  absolute TRISB.0;
  PIE1                : byte absolute $0091;
  PIE1_TMR1GIE        : bit  absolute PIE1.7;
  PIE1_ADIE           : bit  absolute PIE1.6;
  PIE1_RCIE           : bit  absolute PIE1.5;
  PIE1_TXIE           : bit  absolute PIE1.4;
  PIE1_SSP1IE         : bit  absolute PIE1.3;
  PIE1_CCP1IE         : bit  absolute PIE1.2;
  PIE1_TMR2IE         : bit  absolute PIE1.1;
  PIE1_TMR1IE         : bit  absolute PIE1.0;
  PIE2                : byte absolute $0092;
  PIE2_OSFIE          : bit  absolute PIE2.5;
  PIE2_C2IE           : bit  absolute PIE2.4;
  PIE2_C1IE           : bit  absolute PIE2.3;
  PIE2_EEIE           : bit  absolute PIE2.2;
  PIE2_BCL1IE         : bit  absolute PIE2.1;
  OPTION_REG          : byte absolute $0095;
  OPTION_REG_WPUEN    : bit  absolute OPTION_REG.7;
  OPTION_REG_INTEDG   : bit  absolute OPTION_REG.6;
  OPTION_REG_TMR0CS   : bit  absolute OPTION_REG.5;
  OPTION_REG_TMR0SE   : bit  absolute OPTION_REG.4;
  OPTION_REG_PSA      : bit  absolute OPTION_REG.3;
  OPTION_REG_PS2      : bit  absolute OPTION_REG.2;
  OPTION_REG_PS1      : bit  absolute OPTION_REG.1;
  OPTION_REG_PS0      : bit  absolute OPTION_REG.0;
  PCON                : byte absolute $0096;
  PCON_STKOVF         : bit  absolute PCON.6;
  PCON_STKUNF         : bit  absolute PCON.5;
  PCON_RMCLR          : bit  absolute PCON.4;
  PCON_RI             : bit  absolute PCON.3;
  PCON_POR            : bit  absolute PCON.2;
  PCON_BOR            : bit  absolute PCON.1;
  WDTCON              : byte absolute $0097;
  WDTCON_WDTPS4       : bit  absolute WDTCON.5;
  WDTCON_WDTPS3       : bit  absolute WDTCON.4;
  WDTCON_WDTPS2       : bit  absolute WDTCON.3;
  WDTCON_WDTPS1       : bit  absolute WDTCON.2;
  WDTCON_WDTPS0       : bit  absolute WDTCON.1;
  WDTCON_SWDTEN       : bit  absolute WDTCON.0;
  OSCTUNE             : byte absolute $0098;
  OSCTUNE_TUN5        : bit  absolute OSCTUNE.5;
  OSCTUNE_TUN4        : bit  absolute OSCTUNE.4;
  OSCTUNE_TUN3        : bit  absolute OSCTUNE.3;
  OSCTUNE_TUN2        : bit  absolute OSCTUNE.2;
  OSCTUNE_TUN1        : bit  absolute OSCTUNE.1;
  OSCTUNE_TUN0        : bit  absolute OSCTUNE.0;
  OSCCON              : byte absolute $0099;
  OSCCON_SPLLEN       : bit  absolute OSCCON.7;
  OSCCON_IRCF3        : bit  absolute OSCCON.6;
  OSCCON_IRCF2        : bit  absolute OSCCON.5;
  OSCCON_IRCF1        : bit  absolute OSCCON.4;
  OSCCON_IRCF0        : bit  absolute OSCCON.3;
  OSCCON_SCS1         : bit  absolute OSCCON.2;
  OSCCON_SCS0         : bit  absolute OSCCON.1;
  OSCSTAT             : byte absolute $009A;
  OSCSTAT_T1OSCR      : bit  absolute OSCSTAT.7;
  OSCSTAT_PLLR        : bit  absolute OSCSTAT.6;
  OSCSTAT_OSTS        : bit  absolute OSCSTAT.5;
  OSCSTAT_HFIOFR      : bit  absolute OSCSTAT.4;
  OSCSTAT_HFIOFL      : bit  absolute OSCSTAT.3;
  OSCSTAT_MFIOFR      : bit  absolute OSCSTAT.2;
  OSCSTAT_LFIOFR      : bit  absolute OSCSTAT.1;
  OSCSTAT_HFIOFS      : bit  absolute OSCSTAT.0;
  ADRESL              : byte absolute $009B;
  ADRESH              : byte absolute $009C;
  ADCON0              : byte absolute $009D;
  ADCON0_CHS4         : bit  absolute ADCON0.7;
  ADCON0_CHS3         : bit  absolute ADCON0.6;
  ADCON0_CHS2         : bit  absolute ADCON0.5;
  ADCON0_CHS1         : bit  absolute ADCON0.4;
  ADCON0_CHS0         : bit  absolute ADCON0.3;
  ADCON0_GO_nDONE     : bit  absolute ADCON0.2;
  ADCON0_ADON         : bit  absolute ADCON0.1;
  ADCON1              : byte absolute $009E;
  ADCON1_ADFM         : bit  absolute ADCON1.7;
  ADCON1_ADCS2        : bit  absolute ADCON1.6;
  ADCON1_ADCS1        : bit  absolute ADCON1.5;
  ADCON1_ADCS0        : bit  absolute ADCON1.4;
  ADCON1_ADNREF       : bit  absolute ADCON1.3;
  ADCON1_ADPREF1      : bit  absolute ADCON1.2;
  ADCON1_ADPREF0      : bit  absolute ADCON1.1;
  LATA                : byte absolute $010C;
  LATA_LATA7          : bit  absolute LATA.7;
  LATA_LATA6          : bit  absolute LATA.6;
  LATA_LATA4          : bit  absolute LATA.5;
  LATA_LATA3          : bit  absolute LATA.4;
  LATA_LATA2          : bit  absolute LATA.3;
  LATA_LATA1          : bit  absolute LATA.2;
  LATA_LATA0          : bit  absolute LATA.1;
  LATB                : byte absolute $010D;
  LATB_LATB7          : bit  absolute LATB.7;
  LATB_LATB6          : bit  absolute LATB.6;
  LATB_LATB5          : bit  absolute LATB.5;
  LATB_LATB4          : bit  absolute LATB.4;
  LATB_LATB3          : bit  absolute LATB.3;
  LATB_LATB2          : bit  absolute LATB.2;
  LATB_LATB1          : bit  absolute LATB.1;
  LATB_LATB0          : bit  absolute LATB.0;
  CM1CON0             : byte absolute $0111;
  CM1CON0_C1ON        : bit  absolute CM1CON0.7;
  CM1CON0_C1OUT       : bit  absolute CM1CON0.6;
  CM1CON0_C1OE        : bit  absolute CM1CON0.5;
  CM1CON0_C1POL       : bit  absolute CM1CON0.4;
  CM1CON0_C1SP        : bit  absolute CM1CON0.3;
  CM1CON0_C1HYS       : bit  absolute CM1CON0.2;
  CM1CON0_C1SYNC      : bit  absolute CM1CON0.1;
  CM1CON1             : byte absolute $0112;
  CM1CON1_C1INTP      : bit  absolute CM1CON1.7;
  CM1CON1_C1INTN      : bit  absolute CM1CON1.6;
  CM1CON1_C1PCH1      : bit  absolute CM1CON1.5;
  CM1CON1_C1PCH0      : bit  absolute CM1CON1.4;
  CM1CON1_C1NCH1      : bit  absolute CM1CON1.3;
  CM1CON1_C1NCH0      : bit  absolute CM1CON1.2;
  CM2CON0             : byte absolute $0113;
  CM2CON0_C2ON        : bit  absolute CM2CON0.7;
  CM2CON0_C2OUT       : bit  absolute CM2CON0.6;
  CM2CON0_C2OE        : bit  absolute CM2CON0.5;
  CM2CON0_C2POL       : bit  absolute CM2CON0.4;
  CM2CON0_C2SP        : bit  absolute CM2CON0.3;
  CM2CON0_C2HYS       : bit  absolute CM2CON0.2;
  CM2CON0_C2SYNC      : bit  absolute CM2CON0.1;
  CM2CON1             : byte absolute $0114;
  CM2CON1_C2INTP      : bit  absolute CM2CON1.7;
  CM2CON1_C2INTN      : bit  absolute CM2CON1.6;
  CM2CON1_C2PCH1      : bit  absolute CM2CON1.5;
  CM2CON1_C2PCH0      : bit  absolute CM2CON1.4;
  CM2CON1_C2NCH1      : bit  absolute CM2CON1.3;
  CM2CON1_C2NCH0      : bit  absolute CM2CON1.2;
  CMOUT               : byte absolute $0115;
  CMOUT_MC2OUT        : bit  absolute CMOUT.1;
  CMOUT_MC1OUT        : bit  absolute CMOUT.0;
  BORCON              : byte absolute $0116;
  BORCON_SBOREN       : bit  absolute BORCON.7;
  BORCON_BORRDY       : bit  absolute BORCON.6;
  FVRCON              : byte absolute $0117;
  FVRCON_FVREN        : bit  absolute FVRCON.7;
  FVRCON_FVRRDY       : bit  absolute FVRCON.6;
  FVRCON_TSEN         : bit  absolute FVRCON.5;
  FVRCON_TSRNG        : bit  absolute FVRCON.4;
  FVRCON_CDAFVR1      : bit  absolute FVRCON.3;
  FVRCON_CDAFVR0      : bit  absolute FVRCON.2;
  FVRCON_ADFVR1       : bit  absolute FVRCON.1;
  FVRCON_ADFVR0       : bit  absolute FVRCON.0;
  DACCON0             : byte absolute $0118;
  DACCON0_DACEN       : bit  absolute DACCON0.6;
  DACCON0_DACLPS      : bit  absolute DACCON0.5;
  DACCON0_DACOE       : bit  absolute DACCON0.4;
  DACCON0_DACPSS1     : bit  absolute DACCON0.3;
  DACCON0_DACPSS0     : bit  absolute DACCON0.2;
  DACCON0_DACNSS      : bit  absolute DACCON0.1;
  DACCON1             : byte absolute $0119;
  DACCON1_DACR4       : bit  absolute DACCON1.5;
  DACCON1_DACR3       : bit  absolute DACCON1.4;
  DACCON1_DACR2       : bit  absolute DACCON1.3;
  DACCON1_DACR1       : bit  absolute DACCON1.2;
  DACCON1_DACR0       : bit  absolute DACCON1.1;
  SRCON0              : byte absolute $011A;
  SRCON0_SRLEN        : bit  absolute SRCON0.7;
  SRCON0_SRCLK2       : bit  absolute SRCON0.6;
  SRCON0_SRCLK1       : bit  absolute SRCON0.5;
  SRCON0_SRCLK0       : bit  absolute SRCON0.4;
  SRCON0_SRQEN        : bit  absolute SRCON0.3;
  SRCON0_SRNQEN       : bit  absolute SRCON0.2;
  SRCON0_SRPS         : bit  absolute SRCON0.1;
  SRCON0_SRPR         : bit  absolute SRCON0.0;
  SRCON1              : byte absolute $011B;
  SRCON1_SRSPE        : bit  absolute SRCON1.7;
  SRCON1_SRSCKE       : bit  absolute SRCON1.6;
  SRCON1_SRSC2E       : bit  absolute SRCON1.5;
  SRCON1_SRSC1E       : bit  absolute SRCON1.4;
  SRCON1_SRRPE        : bit  absolute SRCON1.3;
  SRCON1_SRRCKE       : bit  absolute SRCON1.2;
  SRCON1_SRRC2E       : bit  absolute SRCON1.1;
  SRCON1_SRRC1E       : bit  absolute SRCON1.0;
  APFCON0             : byte absolute $011D;
  APFCON0_RXDTSEL     : bit  absolute APFCON0.6;
  APFCON0_SDO1SEL     : bit  absolute APFCON0.5;
  APFCON0_SS1SEL      : bit  absolute APFCON0.4;
  APFCON0_P1DSEL      : bit  absolute APFCON0.3;
  APFCON0_P1CSEL      : bit  absolute APFCON0.2;
  APFCON0_CCP1SEL     : bit  absolute APFCON0.1;
  APFCON1             : byte absolute $011E;
  APFCON1_TXCKSEL     : bit  absolute APFCON1.0;
  ANSELA              : byte absolute $018C;
  ANSELA_ANSA4        : bit  absolute ANSELA.5;
  ANSELA_ANSA3        : bit  absolute ANSELA.4;
  ANSELA_ANSA2        : bit  absolute ANSELA.3;
  ANSELA_ANSA1        : bit  absolute ANSELA.2;
  ANSELA_ANSA0        : bit  absolute ANSELA.1;
  ANSELB              : byte absolute $018D;
  ANSELB_ANSB7        : bit  absolute ANSELB.7;
  ANSELB_ANSB6        : bit  absolute ANSELB.6;
  ANSELB_ANSB5        : bit  absolute ANSELB.5;
  ANSELB_ANSB4        : bit  absolute ANSELB.4;
  ANSELB_ANSB3        : bit  absolute ANSELB.3;
  ANSELB_ANSB2        : bit  absolute ANSELB.2;
  ANSELB_ANSB1        : bit  absolute ANSELB.1;
  EEADRL              : byte absolute $0191;
  EEADRH              : byte absolute $0192;
  EEDATL              : byte absolute $0193;
  EEDATH              : byte absolute $0194;
  EECON1              : byte absolute $0195;
  EECON1_EEPGD        : bit  absolute EECON1.7;
  EECON1_CFGS         : bit  absolute EECON1.6;
  EECON1_LWLO         : bit  absolute EECON1.5;
  EECON1_FREE         : bit  absolute EECON1.4;
  EECON1_WRERR        : bit  absolute EECON1.3;
  EECON1_WREN         : bit  absolute EECON1.2;
  EECON1_WR           : bit  absolute EECON1.1;
  EECON1_RD           : bit  absolute EECON1.0;
  EECON2              : byte absolute $0196;
  RCREG               : byte absolute $0199;
  TXREG               : byte absolute $019A;
  SP1BRGL             : byte absolute $019B;
  SP1BRGH             : byte absolute $019C;
  RCSTA               : byte absolute $019D;
  RCSTA_SPEN          : bit  absolute RCSTA.7;
  RCSTA_RX9           : bit  absolute RCSTA.6;
  RCSTA_SREN          : bit  absolute RCSTA.5;
  RCSTA_CREN          : bit  absolute RCSTA.4;
  RCSTA_ADDEN         : bit  absolute RCSTA.3;
  RCSTA_FERR          : bit  absolute RCSTA.2;
  RCSTA_OERR          : bit  absolute RCSTA.1;
  RCSTA_RX9D          : bit  absolute RCSTA.0;
  TXSTA               : byte absolute $019E;
  TXSTA_CSRC          : bit  absolute TXSTA.7;
  TXSTA_TX9           : bit  absolute TXSTA.6;
  TXSTA_TXEN          : bit  absolute TXSTA.5;
  TXSTA_SYNC          : bit  absolute TXSTA.4;
  TXSTA_SENDB         : bit  absolute TXSTA.3;
  TXSTA_BRGH          : bit  absolute TXSTA.2;
  TXSTA_TRMT          : bit  absolute TXSTA.1;
  TXSTA_TX9D          : bit  absolute TXSTA.0;
  BAUDCON             : byte absolute $019F;
  BAUDCON_ABDOVF      : bit  absolute BAUDCON.6;
  BAUDCON_RCIDL       : bit  absolute BAUDCON.5;
  BAUDCON_SCKP        : bit  absolute BAUDCON.4;
  BAUDCON_BRG16       : bit  absolute BAUDCON.3;
  BAUDCON_WUE         : bit  absolute BAUDCON.2;
  BAUDCON_ABDEN       : bit  absolute BAUDCON.1;
  WPUA                : byte absolute $020C;
  WPUA_WPUA5          : bit  absolute WPUA.5;
  WPUB                : byte absolute $020D;
  WPUB_WPUB7          : bit  absolute WPUB.7;
  WPUB_WPUB6          : bit  absolute WPUB.6;
  WPUB_WPUB5          : bit  absolute WPUB.5;
  WPUB_WPUB4          : bit  absolute WPUB.4;
  WPUB_WPUB3          : bit  absolute WPUB.3;
  WPUB_WPUB2          : bit  absolute WPUB.2;
  WPUB_WPUB1          : bit  absolute WPUB.1;
  WPUB_WPUB0          : bit  absolute WPUB.0;
  SSP1BUF             : byte absolute $0211;
  SSP1ADD             : byte absolute $0212;
  SSP1MSK             : byte absolute $0213;
  SSP1STAT            : byte absolute $0214;
  SSP1STAT_SMP        : bit  absolute SSP1STAT.7;
  SSP1STAT_CKE        : bit  absolute SSP1STAT.6;
  SSP1STAT_D_nA       : bit  absolute SSP1STAT.5;
  SSP1STAT_P          : bit  absolute SSP1STAT.4;
  SSP1STAT_S          : bit  absolute SSP1STAT.3;
  SSP1STAT_R_nW       : bit  absolute SSP1STAT.2;
  SSP1STAT_UA         : bit  absolute SSP1STAT.1;
  SSP1STAT_BF         : bit  absolute SSP1STAT.0;
  SSP1CON1            : byte absolute $0215;
  SSP1CON1_WCOL       : bit  absolute SSP1CON1.7;
  SSP1CON1_SSPOV      : bit  absolute SSP1CON1.6;
  SSP1CON1_SSPEN      : bit  absolute SSP1CON1.5;
  SSP1CON1_CKP        : bit  absolute SSP1CON1.4;
  SSP1CON1_SSPM3      : bit  absolute SSP1CON1.3;
  SSP1CON1_SSPM2      : bit  absolute SSP1CON1.2;
  SSP1CON1_SSPM1      : bit  absolute SSP1CON1.1;
  SSP1CON1_SSPM0      : bit  absolute SSP1CON1.0;
  SSP1CON2            : byte absolute $0216;
  SSP1CON2_GCEN       : bit  absolute SSP1CON2.7;
  SSP1CON2_ACKSTAT    : bit  absolute SSP1CON2.6;
  SSP1CON2_ACKDT      : bit  absolute SSP1CON2.5;
  SSP1CON2_ACKEN      : bit  absolute SSP1CON2.4;
  SSP1CON2_RCEN       : bit  absolute SSP1CON2.3;
  SSP1CON2_PEN        : bit  absolute SSP1CON2.2;
  SSP1CON2_RSEN       : bit  absolute SSP1CON2.1;
  SSP1CON2_SEN        : bit  absolute SSP1CON2.0;
  SSP1CON3            : byte absolute $0217;
  SSP1CON3_ACKTIM     : bit  absolute SSP1CON3.7;
  SSP1CON3_PCIE       : bit  absolute SSP1CON3.6;
  SSP1CON3_SCIE       : bit  absolute SSP1CON3.5;
  SSP1CON3_BOEN       : bit  absolute SSP1CON3.4;
  SSP1CON3_SDAHT      : bit  absolute SSP1CON3.3;
  SSP1CON3_SBCDE      : bit  absolute SSP1CON3.2;
  SSP1CON3_AHEN       : bit  absolute SSP1CON3.1;
  SSP1CON3_DHEN       : bit  absolute SSP1CON3.0;
  CCPR1L              : byte absolute $0291;
  CCPR1H              : byte absolute $0292;
  CCP1CON             : byte absolute $0293;
  CCP1CON_P1M1        : bit  absolute CCP1CON.7;
  CCP1CON_P1M0        : bit  absolute CCP1CON.6;
  CCP1CON_DC1B1       : bit  absolute CCP1CON.5;
  CCP1CON_DC1B0       : bit  absolute CCP1CON.4;
  CCP1CON_CCP1M3      : bit  absolute CCP1CON.3;
  CCP1CON_CCP1M2      : bit  absolute CCP1CON.2;
  CCP1CON_CCP1M1      : bit  absolute CCP1CON.1;
  CCP1CON_CCP1M0      : bit  absolute CCP1CON.0;
  PWM1CON             : byte absolute $0294;
  PWM1CON_P1RSEN      : bit  absolute PWM1CON.7;
  PWM1CON_P1DC6       : bit  absolute PWM1CON.6;
  PWM1CON_P1DC5       : bit  absolute PWM1CON.5;
  PWM1CON_P1DC4       : bit  absolute PWM1CON.4;
  PWM1CON_P1DC3       : bit  absolute PWM1CON.3;
  PWM1CON_P1DC2       : bit  absolute PWM1CON.2;
  PWM1CON_P1DC1       : bit  absolute PWM1CON.1;
  PWM1CON_P1DC0       : bit  absolute PWM1CON.0;
  CCP1AS              : byte absolute $0295;
  CCP1AS_CCP1ASE      : bit  absolute CCP1AS.7;
  CCP1AS_CCP1AS2      : bit  absolute CCP1AS.6;
  CCP1AS_CCP1AS1      : bit  absolute CCP1AS.5;
  CCP1AS_CCP1AS0      : bit  absolute CCP1AS.4;
  CCP1AS_PSS1AC1      : bit  absolute CCP1AS.3;
  CCP1AS_PSS1AC0      : bit  absolute CCP1AS.2;
  CCP1AS_PSS1BD1      : bit  absolute CCP1AS.1;
  CCP1AS_PSS1BD0      : bit  absolute CCP1AS.0;
  PSTR1CON            : byte absolute $0296;
  PSTR1CON_STR1SYNC   : bit  absolute PSTR1CON.4;
  PSTR1CON_STR1D      : bit  absolute PSTR1CON.3;
  PSTR1CON_STR1C      : bit  absolute PSTR1CON.2;
  PSTR1CON_STR1B      : bit  absolute PSTR1CON.1;
  PSTR1CON_STR1A      : bit  absolute PSTR1CON.0;
  IOCBP               : byte absolute $0394;
  IOCBP_IOCBP7        : bit  absolute IOCBP.7;
  IOCBP_IOCBP6        : bit  absolute IOCBP.6;
  IOCBP_IOCBP5        : bit  absolute IOCBP.5;
  IOCBP_IOCBP4        : bit  absolute IOCBP.4;
  IOCBP_IOCBP3        : bit  absolute IOCBP.3;
  IOCBP_IOCBP2        : bit  absolute IOCBP.2;
  IOCBP_IOCBP1        : bit  absolute IOCBP.1;
  IOCBP_IOCBP0        : bit  absolute IOCBP.0;
  IOCBN               : byte absolute $0395;
  IOCBN_IOCBN7        : bit  absolute IOCBN.7;
  IOCBN_IOCBN6        : bit  absolute IOCBN.6;
  IOCBN_IOCBN5        : bit  absolute IOCBN.5;
  IOCBN_IOCBN4        : bit  absolute IOCBN.4;
  IOCBN_IOCBN3        : bit  absolute IOCBN.3;
  IOCBN_IOCBN2        : bit  absolute IOCBN.2;
  IOCBN_IOCBN1        : bit  absolute IOCBN.1;
  IOCBN_IOCBN0        : bit  absolute IOCBN.0;
  IOCBF               : byte absolute $0396;
  IOCBF_IOCBF7        : bit  absolute IOCBF.7;
  IOCBF_IOCBF6        : bit  absolute IOCBF.6;
  IOCBF_IOCBF5        : bit  absolute IOCBF.5;
  IOCBF_IOCBF4        : bit  absolute IOCBF.4;
  IOCBF_IOCBF3        : bit  absolute IOCBF.3;
  IOCBF_IOCBF2        : bit  absolute IOCBF.2;
  IOCBF_IOCBF1        : bit  absolute IOCBF.1;
  IOCBF_IOCBF0        : bit  absolute IOCBF.0;
  CLKRCON             : byte absolute $039A;
  CLKRCON_CLKREN      : bit  absolute CLKRCON.7;
  CLKRCON_CLKROE      : bit  absolute CLKRCON.6;
  CLKRCON_CLKRSLR     : bit  absolute CLKRCON.5;
  CLKRCON_CLKRDC1     : bit  absolute CLKRCON.4;
  CLKRCON_CLKRDC0     : bit  absolute CLKRCON.3;
  CLKRCON_CLKRDIV2    : bit  absolute CLKRCON.2;
  CLKRCON_CLKRDIV1    : bit  absolute CLKRCON.1;
  CLKRCON_CLKRDIV0    : bit  absolute CLKRCON.0;
  MDCON               : byte absolute $039C;
  MDCON_MDEN          : bit  absolute MDCON.7;
  MDCON_MDOE          : bit  absolute MDCON.6;
  MDCON_MDSLR         : bit  absolute MDCON.5;
  MDCON_MDOPOL        : bit  absolute MDCON.4;
  MDCON_MDOUT         : bit  absolute MDCON.3;
  MDCON_MDBIT         : bit  absolute MDCON.2;
  MDSRC               : byte absolute $039D;
  MDSRC_MDMSODIS      : bit  absolute MDSRC.7;
  MDSRC_MDMS3         : bit  absolute MDSRC.6;
  MDSRC_MDMS2         : bit  absolute MDSRC.5;
  MDSRC_MDMS1         : bit  absolute MDSRC.4;
  MDSRC_MDMS0         : bit  absolute MDSRC.3;
  MDCARL              : byte absolute $039E;
  MDCARL_MDCLODIS     : bit  absolute MDCARL.7;
  MDCARL_MDCLPOL      : bit  absolute MDCARL.6;
  MDCARL_MDCLSYNC     : bit  absolute MDCARL.5;
  MDCARL_MDCL3        : bit  absolute MDCARL.4;
  MDCARL_MDCL2        : bit  absolute MDCARL.3;
  MDCARL_MDCL1        : bit  absolute MDCARL.2;
  MDCARL_MDCL0        : bit  absolute MDCARL.1;
  MDCARH              : byte absolute $039F;
  MDCARH_MDCHODIS     : bit  absolute MDCARH.7;
  MDCARH_MDCHPOL      : bit  absolute MDCARH.6;
  MDCARH_MDCHSYNC     : bit  absolute MDCARH.5;
  MDCARH_MDCH3        : bit  absolute MDCARH.4;
  MDCARH_MDCH2        : bit  absolute MDCARH.3;
  MDCARH_MDCH1        : bit  absolute MDCARH.2;
  MDCARH_MDCH0        : bit  absolute MDCARH.1;
  STATUS_SHAD         : byte absolute $0FE4;
  STATUS_SHAD_Z_SHAD  : bit  absolute STATUS_SHAD.2;
  STATUS_SHAD_DC_SHAD : bit  absolute STATUS_SHAD.1;
  STATUS_SHAD_C_SHAD  : bit  absolute STATUS_SHAD.0;
  WREG_SHAD           : byte absolute $0FE5;
  BSR_SHAD            : byte absolute $0FE6;
  PCLATH_SHAD         : byte absolute $0FE7;
  FSR0L_SHAD          : byte absolute $0FE8;
  FSR0H_SHAD          : byte absolute $0FE9;
  FSR1L_SHAD          : byte absolute $0FEA;
  FSR1H_SHAD          : byte absolute $0FEB;
  STKPTR              : byte absolute $0FED;
  TOSL                : byte absolute $0FEE;
  TOSH                : byte absolute $0FEF;


  // -- Define RAM state values --

  {$CLEAR_STATE_RAM}

  {$SET_STATE_RAM '000-00D:SFR'}  // INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON, PORTA, PORTB
  {$SET_STATE_RAM '011-012:SFR'}  // PIR1, PIR2
  {$SET_STATE_RAM '015-01C:SFR'}  // TMR0, TMR1L, TMR1H, T1CON, T1GCON, TMR2, PR2, T2CON
  {$SET_STATE_RAM '01E-01F:SFR'}  // CPSCON0, CPSCON1
  {$SET_STATE_RAM '020-06F:GPR'} 
  {$SET_STATE_RAM '070-07F:GPR'} 
  {$SET_STATE_RAM '080-080:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '08C-08D:SFR'}  // TRISA, TRISB
  {$SET_STATE_RAM '091-092:SFR'}  // PIE1, PIE2
  {$SET_STATE_RAM '095-09E:SFR'}  // OPTION_REG, PCON, WDTCON, OSCTUNE, OSCCON, OSCSTAT, ADRESL, ADRESH, ADCON0, ADCON1
  {$SET_STATE_RAM '0A0-0EF:GPR'} 
  {$SET_STATE_RAM '0F0-0FF:GPR'} 
  {$SET_STATE_RAM '100-100:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '10C-10D:SFR'}  // LATA, LATB
  {$SET_STATE_RAM '111-11B:SFR'}  // CM1CON0, CM1CON1, CM2CON0, CM2CON1, CMOUT, BORCON, FVRCON, DACCON0, DACCON1, SRCON0, SRCON1
  {$SET_STATE_RAM '11D-11E:SFR'}  // APFCON0, APFCON1
  {$SET_STATE_RAM '120-16F:GPR'} 
  {$SET_STATE_RAM '170-17F:GPR'} 
  {$SET_STATE_RAM '180-180:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '18C-18D:SFR'}  // ANSELA, ANSELB
  {$SET_STATE_RAM '191-196:SFR'}  // EEADRL, EEADRH, EEDATL, EEDATH, EECON1, EECON2
  {$SET_STATE_RAM '199-19F:SFR'}  // RCREG, TXREG, SP1BRGL, SP1BRGH, RCSTA, TXSTA, BAUDCON
  {$SET_STATE_RAM '1F0-1FF:GPR'} 
  {$SET_STATE_RAM '200-200:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '20C-20D:SFR'}  // WPUA, WPUB
  {$SET_STATE_RAM '211-217:SFR'}  // SSP1BUF, SSP1ADD, SSP1MSK, SSP1STAT, SSP1CON1, SSP1CON2, SSP1CON3
  {$SET_STATE_RAM '270-27F:GPR'} 
  {$SET_STATE_RAM '280-280:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '291-296:SFR'}  // CCPR1L, CCPR1H, CCP1CON, PWM1CON, CCP1AS, PSTR1CON
  {$SET_STATE_RAM '2F0-2FF:GPR'} 
  {$SET_STATE_RAM '300-300:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '370-37F:GPR'} 
  {$SET_STATE_RAM '380-380:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '394-396:SFR'}  // IOCBP, IOCBN, IOCBF
  {$SET_STATE_RAM '39A-39A:SFR'}  // CLKRCON
  {$SET_STATE_RAM '39C-39F:SFR'}  // MDCON, MDSRC, MDCARL, MDCARH
  {$SET_STATE_RAM '3F0-3FF:GPR'} 
  {$SET_STATE_RAM '400-400:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '470-47F:GPR'} 
  {$SET_STATE_RAM '480-480:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '4F0-4FF:GPR'} 
  {$SET_STATE_RAM '500-500:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '570-57F:GPR'} 
  {$SET_STATE_RAM '580-580:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '5F0-5FF:GPR'} 
  {$SET_STATE_RAM '600-600:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '670-67F:GPR'} 
  {$SET_STATE_RAM '680-680:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '6F0-6FF:GPR'} 
  {$SET_STATE_RAM '700-700:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '770-77F:GPR'} 
  {$SET_STATE_RAM '780-780:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '7F0-7FF:GPR'} 
  {$SET_STATE_RAM '800-800:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '870-87F:GPR'} 
  {$SET_STATE_RAM '880-880:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '8F0-8FF:GPR'} 
  {$SET_STATE_RAM '900-900:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '970-97F:GPR'} 
  {$SET_STATE_RAM '980-980:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '9F0-9FF:GPR'} 
  {$SET_STATE_RAM 'A00-A00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'A70-A7F:GPR'} 
  {$SET_STATE_RAM 'A80-A80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'AF0-AFF:GPR'} 
  {$SET_STATE_RAM 'B00-B00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'B70-B7F:GPR'} 
  {$SET_STATE_RAM 'B80-B80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'BF0-BFF:GPR'} 
  {$SET_STATE_RAM 'C00-C00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'C70-C7F:GPR'} 
  {$SET_STATE_RAM 'C80-C80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'CF0-CFF:GPR'} 
  {$SET_STATE_RAM 'D00-D00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'D70-D7F:GPR'} 
  {$SET_STATE_RAM 'D80-D80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'DF0-DFF:GPR'} 
  {$SET_STATE_RAM 'E00-E00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'E70-E7F:GPR'} 
  {$SET_STATE_RAM 'E80-E80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'EF0-EFF:GPR'} 
  {$SET_STATE_RAM 'F00-F00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'F70-F7F:GPR'} 
  {$SET_STATE_RAM 'F80-F80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'FE4-FEB:SFR'}  // STATUS_SHAD, WREG_SHAD, BSR_SHAD, PCLATH_SHAD, FSR0L_SHAD, FSR0H_SHAD, FSR1L_SHAD, FSR1H_SHAD
  {$SET_STATE_RAM 'FED-FEF:SFR'}  // STKPTR, TOSL, TOSH
  {$SET_STATE_RAM 'FF0-FFF:GPR'} 


  // -- Define mapped RAM --

  {$SET_MAPPED_RAM '080-08B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '0F0-0FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '100-10B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '170-17F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '180-18B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1F0-1FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '200-20B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '270-27F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '280-28B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '2F0-2FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '300-30B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '370-37F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '380-38B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '3F0-3FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '400-40B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '470-47F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '480-48B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '4F0-4FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '500-50B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '570-57F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '580-58B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '5F0-5FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '600-60B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '670-67F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '680-68B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '6F0-6FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '700-70B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '770-77F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '780-78B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '7F0-7FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '800-80B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '870-87F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '880-88B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '8F0-8FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '900-90B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '970-97F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '980-98B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '9F0-9FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'A00-A0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'A70-A7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'A80-A8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'AF0-AFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'B00-B0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'B70-B7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'B80-B8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'BF0-BFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'C00-C0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'C70-C7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'C80-C8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'CF0-CFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'D00-D0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'D70-D7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'D80-D8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'DF0-DFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'E00-E0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'E70-E7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'E80-E8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'EF0-EFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'F00-F0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'F70-F7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'F80-F8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'FF0-FFF:bnk0'} // maps to area 070-07F (bank 0)


  // -- Un-implemented fields --

  {$SET_UNIMP_BITS '003:1F'} // STATUS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '008:1F'} // BSR bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '00A:7F'} // PCLATH bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '012:F8'} // PIR2 bits 2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '018:FD'} // T1CON bit 1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '01C:7F'} // T2CON bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '01E:8F'} // CPSCON0 bits 6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '01F:0F'} // CPSCON1 bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '092:F8'} // PIE2 bits 2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '096:CF'} // PCON bits 5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '097:3F'} // WDTCON bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '098:3F'} // OSCTUNE bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '099:FB'} // OSCCON bit 2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '09D:7F'} // ADCON0 bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '09E:F7'} // ADCON1 bit 3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '10C:DF'} // LATA bit 5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '111:F7'} // CM1CON0 bit 3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '112:F3'} // CM1CON1 bits 3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '113:F7'} // CM2CON0 bit 3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '114:F3'} // CM2CON1 bits 3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '115:03'} // CMOUT bits 7,6,5,4,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '116:81'} // BORCON bits 6,5,4,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '118:ED'} // DACCON0 bits 4,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '119:1F'} // DACCON1 bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '11D:E7'} // APFCON0 bits 4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '11E:01'} // APFCON1 bits 7,6,5,4,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '18C:1F'} // ANSELA bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '18D:FE'} // ANSELB bit 0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '194:3F'} // EEDATH bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '19F:DB'} // BAUDCON bits 5,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '20C:20'} // WPUA bits 7,6,4,3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '296:1F'} // PSTR1CON bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '39C:F9'} // MDCON bits 2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '39D:8F'} // MDSRC bits 6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '39E:EF'} // MDCARL bit 4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '39F:EF'} // MDCARH bit 4 un-implemented (read as 0)
  {$SET_UNIMP_BITS 'FE4:07'} // STATUS_SHAD bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS 'FE6:1F'} // BSR_SHAD bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS 'FE7:7F'} // PCLATH_SHAD bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS 'FED:1F'} // STKPTR bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS 'FEF:7F'} // TOSH bit 7 un-implemented (read as 0)

  {$SET_UNIMP_BITS1 '192:80'} // EEADRH bit 7 un-implemented (read as 1)


  // -- PIN mapping --

  // Pin  1 : RA2/AN2/CPS2/C12IN2-/C12IN+/Vref-/DACOUT
  // Pin  2 : RA3/AN3/CPS3/C12IN3-/C1IN+/Vref+/C1OUT/SRQ
  // Pin  3 : RA4/AN4/CPS4/C2OUT/T0CKI/SRNQ
  // Pin  4 : RA5/MCLR/Vpp/SS1
  // Pin  5 : Vss
  // Pin  6 : RB0/SRI/T1G/CCP1/P1A/INT/FLT0
  // Pin  7 : RB1/AN11/CPS11/RX/DT/SDA1/SDI1
  // Pin  8 : RB2/AN10/CPS10/MDMIN/TX/CK/RX/DT/SDO1
  // Pin  9 : RB3/AN9/CPS9/MDOUT/CCP1/P1A
  // Pin 10 : RB4/AN8/CPS8/SCL1/SCK1/MDCIN2
  // Pin 11 : RB5/AN7/CPS7/P1B/TX/CK/SS1
  // Pin 12 : RB6/AN5/CPS5/T1CKI/T1OSI/P1C/ICSPCLK/ICDCLK
  // Pin 13 : RB7/AN6/CPS6/T1OSO/P1D/MDCIN1/ICSPDAT/ICDDAT
  // Pin 14 : Vdd
  // Pin 15 : RA6/OSC2/CLKOUT/CLKR/P1D/SDO1
  // Pin 16 : RA7/OSC1/CLKIN/P1C
  // Pin 17 : RA0/AN0/CPS0/C12IN0-
  // Pin 18 : RA1/AN1/CPS1/C12IN1-


  // -- RAM to PIN mapping --

  {$MAP_RAM_TO_PIN '00C:0-17,1-18,2-1,3-2,4-3,5-4,6-15,7-16'} // PORTA
  {$MAP_RAM_TO_PIN '00D:0-6,1-7,2-8,3-9,4-10,5-11,6-12,7-13'} // PORTB


  // -- Bits Configuration --

  // FOSC : Oscillator Selection
  {$define _FOSC_ECH     = $3FFF}  // ECH, External Clock, High Power Mode (4-32 MHz): device clock supplied to CLKIN pin
  {$define _FOSC_ECM     = $3FFE}  // ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pin
  {$define _FOSC_ECL     = $3FFD}  // ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pin
  {$define _FOSC_INTOSC  = $3FFC}  // INTOSC oscillator: I/O function on CLKIN pin
  {$define _FOSC_EXTRC   = $3FFB}  // EXTRC oscillator: External RC circuit connected to CLKIN pin
  {$define _FOSC_HS      = $3FFA}  // HS Oscillator, High-speed crystal/resonator connected between OSC1 and OSC2 pins
  {$define _FOSC_XT      = $3FF9}  // XT Oscillator, Crystal/resonator connected between OSC1 and OSC2 pins
  {$define _FOSC_LP      = $3FF8}  // LP Oscillator, Low-power crystal connected between OSC1 and OSC2 pins

  // WDTE : Watchdog Timer Enable
  {$define _WDTE_ON      = $3FFF}  // WDT enabled
  {$define _WDTE_NSLEEP  = $3FF7}  // WDT enabled while running and disabled in Sleep
  {$define _WDTE_SWDTEN  = $3FEF}  // WDT controlled by the SWDTEN bit in the WDTCON register
  {$define _WDTE_OFF     = $3FE7}  // WDT disabled

  // PWRTE : Power-up Timer Enable
  {$define _PWRTE_OFF    = $3FFF}  // PWRT disabled
  {$define _PWRTE_ON     = $3FDF}  // PWRT enabled

  // MCLRE : MCLR Pin Function Select
  {$define _MCLRE_ON     = $3FFF}  // MCLR/VPP pin function is MCLR
  {$define _MCLRE_OFF    = $3FBF}  // MCLR/VPP pin function is digital input

  // CP : Flash Program Memory Code Protection
  {$define _CP_OFF       = $3FFF}  // Program memory code protection is disabled
  {$define _CP_ON        = $3F7F}  // Program memory code protection is enabled

  // CPD : Data Memory Code Protection
  {$define _CPD_OFF      = $3FFF}  // Data memory code protection is disabled
  {$define _CPD_ON       = $3EFF}  // Data memory code protection is enabled

  // BOREN : Brown-out Reset Enable
  {$define _BOREN_ON     = $3FFF}  // Brown-out Reset enabled
  {$define _BOREN_NSLEEP = $3DFF}  // Brown-out Reset enabled while running and disabled in Sleep
  {$define _BOREN_SBODEN = $3BFF}  // Brown-out Reset controlled by the SBOREN bit in the BORCON register
  {$define _BOREN_OFF    = $39FF}  // Brown-out Reset disabled

  // CLKOUTEN : Clock Out Enable
  {$define _CLKOUTEN_OFF = $3FFF}  // CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin
  {$define _CLKOUTEN_ON  = $37FF}  // CLKOUT function is enabled on the CLKOUT pin

  // IESO : Internal/External Switchover
  {$define _IESO_ON      = $3FFF}  // Internal/External Switchover mode is enabled
  {$define _IESO_OFF     = $2FFF}  // Internal/External Switchover mode is disabled

  // FCMEN : Fail-Safe Clock Monitor Enable
  {$define _FCMEN_ON     = $3FFF}  // Fail-Safe Clock Monitor is enabled
  {$define _FCMEN_OFF    = $1FFF}  // Fail-Safe Clock Monitor is disabled

  // WRT : Flash Memory Self-Write Protection
  {$define _WRT_OFF      = $3FFF}  // Write protection off
  {$define _WRT_BOOT     = $3FFE}  // 000h to 1FFh write protected, 200h to 7FFh may be modified by EECON control
  {$define _WRT_HALF     = $3FFD}  // 000h to 3FFh write protected, 400h to 7FFh may be modified by EECON control
  {$define _WRT_ALL      = $3FFC}  // 000h to 7FFh write protected, no addresses may be modified by EECON control

  // PLLEN : PLL Enable
  {$define _PLLEN_ON     = $3FFF}  // 4x PLL enabled
  {$define _PLLEN_OFF    = $3EFF}  // 4x PLL disabled

  // STVREN : Stack Overflow/Underflow Reset Enable
  {$define _STVREN_ON    = $3FFF}  // Stack Overflow or Underflow will cause a Reset
  {$define _STVREN_OFF   = $3DFF}  // Stack Overflow or Underflow will not cause a Reset

  // BORV : Brown-out Reset Voltage Selection
  {$define _BORV_LO      = $3FFF}  // Brown-out Reset Voltage (Vbor), low trip point selected.
  {$define _BORV_HI      = $3BFF}  // Brown-out Reset Voltage (Vbor), high trip point selected.

  // LVP : Low-Voltage Programming Enable
  {$define _LVP_ON       = $3FFF}  // Low-voltage programming enabled
  {$define _LVP_OFF      = $1FFF}  // High-voltage on MCLR/VPP must be used for programming

implementation
end.
