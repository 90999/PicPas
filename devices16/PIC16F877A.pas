unit PIC16F877A;

// Define hardware
{$SET PIC_MODEL    = 'PIC16F877A'}
{$SET PIC_MAXFREQ  = 20000000}
{$SET PIC_NPINS    = 40}
{$SET PIC_NUMBANKS = 4}
{$SET PIC_NUMPAGES = 4}
{$SET PIC_MAXFLASH = 8192}

interface
var
  INDF              : byte absolute $0000;
  TMR0              : byte absolute $0001;
  PCL               : byte absolute $0002;
  STATUS            : byte absolute $0003;
  STATUS_IRP        : bit  absolute STATUS.7;
  STATUS_RP1        : bit  absolute STATUS.6;
  STATUS_RP0        : bit  absolute STATUS.5;
  STATUS_nTO        : bit  absolute STATUS.4;
  STATUS_nPD        : bit  absolute STATUS.3;
  STATUS_Z          : bit  absolute STATUS.2;
  STATUS_DC         : bit  absolute STATUS.1;
  STATUS_C          : bit  absolute STATUS.0;
  FSR               : byte absolute $0004;
  PORTA             : byte absolute $0005;
  PORTA_RA5         : bit  absolute PORTA.5;
  PORTA_RA4         : bit  absolute PORTA.4;
  PORTA_RA3         : bit  absolute PORTA.3;
  PORTA_RA2         : bit  absolute PORTA.2;
  PORTA_RA1         : bit  absolute PORTA.1;
  PORTA_RA0         : bit  absolute PORTA.0;
  PORTB             : byte absolute $0006;
  PORTB_RB7         : bit  absolute PORTB.7;
  PORTB_RB6         : bit  absolute PORTB.6;
  PORTB_RB5         : bit  absolute PORTB.5;
  PORTB_RB4         : bit  absolute PORTB.4;
  PORTB_RB3         : bit  absolute PORTB.3;
  PORTB_RB2         : bit  absolute PORTB.2;
  PORTB_RB1         : bit  absolute PORTB.1;
  PORTB_RB0         : bit  absolute PORTB.0;
  PORTC             : byte absolute $0007;
  PORTC_RC7         : bit  absolute PORTC.7;
  PORTC_RC6         : bit  absolute PORTC.6;
  PORTC_RC5         : bit  absolute PORTC.5;
  PORTC_RC4         : bit  absolute PORTC.4;
  PORTC_RC3         : bit  absolute PORTC.3;
  PORTC_RC2         : bit  absolute PORTC.2;
  PORTC_RC1         : bit  absolute PORTC.1;
  PORTC_RC0         : bit  absolute PORTC.0;
  PORTD             : byte absolute $0008;
  PORTD_RD7         : bit  absolute PORTD.7;
  PORTD_RD6         : bit  absolute PORTD.6;
  PORTD_RD5         : bit  absolute PORTD.5;
  PORTD_RD4         : bit  absolute PORTD.4;
  PORTD_RD3         : bit  absolute PORTD.3;
  PORTD_RD2         : bit  absolute PORTD.2;
  PORTD_RD1         : bit  absolute PORTD.1;
  PORTD_RD0         : bit  absolute PORTD.0;
  PORTE             : byte absolute $0009;
  PORTE_RE2         : bit  absolute PORTE.2;
  PORTE_RE1         : bit  absolute PORTE.1;
  PORTE_RE0         : bit  absolute PORTE.0;
  PCLATH            : byte absolute $000A;
  PCLATH_PCLATH4    : bit  absolute PCLATH.4;
  PCLATH_PCLATH3    : bit  absolute PCLATH.3;
  PCLATH_PCLATH2    : bit  absolute PCLATH.2;
  PCLATH_PCLATH1    : bit  absolute PCLATH.1;
  PCLATH_PCLATH0    : bit  absolute PCLATH.0;
  INTCON            : byte absolute $000B;
  INTCON_GIE        : bit  absolute INTCON.7;
  INTCON_PEIE       : bit  absolute INTCON.6;
  INTCON_TMR0IE     : bit  absolute INTCON.5;
  INTCON_INTE       : bit  absolute INTCON.4;
  INTCON_RBIE       : bit  absolute INTCON.3;
  INTCON_TMR0IF     : bit  absolute INTCON.2;
  INTCON_INTF       : bit  absolute INTCON.1;
  INTCON_RBIF       : bit  absolute INTCON.0;
  PIR1              : byte absolute $000C;
  PIR1_PSPIF        : bit  absolute PIR1.7;
  PIR1_ADIF         : bit  absolute PIR1.6;
  PIR1_RCIF         : bit  absolute PIR1.5;
  PIR1_TXIF         : bit  absolute PIR1.4;
  PIR1_SSPIF        : bit  absolute PIR1.3;
  PIR1_CCP1IF       : bit  absolute PIR1.2;
  PIR1_TMR2IF       : bit  absolute PIR1.1;
  PIR1_TMR1IF       : bit  absolute PIR1.0;
  PIR2              : byte absolute $000D;
  PIR2_CMIF         : bit  absolute PIR2.6;
  PIR2_EEIF         : bit  absolute PIR2.4;
  PIR2_BCLIF        : bit  absolute PIR2.3;
  PIR2_CCP2IF       : bit  absolute PIR2.0;
  TMR1L             : byte absolute $000E;
  TMR1H             : byte absolute $000F;
  T1CON             : byte absolute $0010;
  T1CON_T1CKPS1     : bit  absolute T1CON.5;
  T1CON_T1CKPS0     : bit  absolute T1CON.4;
  T1CON_T1OSCEN     : bit  absolute T1CON.3;
  T1CON_nT1SYNC     : bit  absolute T1CON.2;
  T1CON_TMR1CS      : bit  absolute T1CON.1;
  T1CON_TMR1ON      : bit  absolute T1CON.0;
  TMR2              : byte absolute $0011;
  T2CON             : byte absolute $0012;
  T2CON_TOUTPS3     : bit  absolute T2CON.6;
  T2CON_TOUTPS2     : bit  absolute T2CON.5;
  T2CON_TOUTPS1     : bit  absolute T2CON.4;
  T2CON_TOUTPS0     : bit  absolute T2CON.3;
  T2CON_TMR2ON      : bit  absolute T2CON.2;
  T2CON_T2CKPS1     : bit  absolute T2CON.1;
  T2CON_T2CKPS0     : bit  absolute T2CON.0;
  SSPBUF            : byte absolute $0013;
  SSPCON            : byte absolute $0014;
  SSPCON_WCOL       : bit  absolute SSPCON.7;
  SSPCON_SSPOV      : bit  absolute SSPCON.6;
  SSPCON_SSPEN      : bit  absolute SSPCON.5;
  SSPCON_CKP        : bit  absolute SSPCON.4;
  SSPCON_SSPM3      : bit  absolute SSPCON.3;
  SSPCON_SSPM2      : bit  absolute SSPCON.2;
  SSPCON_SSPM1      : bit  absolute SSPCON.1;
  SSPCON_SSPM0      : bit  absolute SSPCON.0;
  CCPR1L            : byte absolute $0015;
  CCPR1H            : byte absolute $0016;
  CCP1CON           : byte absolute $0017;
  CCP1CON_CCP1X     : bit  absolute CCP1CON.5;
  CCP1CON_CCP1Y     : bit  absolute CCP1CON.4;
  CCP1CON_CCP1M3    : bit  absolute CCP1CON.3;
  CCP1CON_CCP1M2    : bit  absolute CCP1CON.2;
  CCP1CON_CCP1M1    : bit  absolute CCP1CON.1;
  CCP1CON_CCP1M0    : bit  absolute CCP1CON.0;
  RCSTA             : byte absolute $0018;
  RCSTA_SPEN        : bit  absolute RCSTA.7;
  RCSTA_RX9         : bit  absolute RCSTA.6;
  RCSTA_SREN        : bit  absolute RCSTA.5;
  RCSTA_CREN        : bit  absolute RCSTA.4;
  RCSTA_ADDEN       : bit  absolute RCSTA.3;
  RCSTA_FERR        : bit  absolute RCSTA.2;
  RCSTA_OERR        : bit  absolute RCSTA.1;
  RCSTA_RX9D        : bit  absolute RCSTA.0;
  TXREG             : byte absolute $0019;
  RCREG             : byte absolute $001A;
  CCPR2L            : byte absolute $001B;
  CCPR2H            : byte absolute $001C;
  CCP2CON           : byte absolute $001D;
  CCP2CON_CCP2X     : bit  absolute CCP2CON.5;
  CCP2CON_CCP2Y     : bit  absolute CCP2CON.4;
  CCP2CON_CCP2M3    : bit  absolute CCP2CON.3;
  CCP2CON_CCP2M2    : bit  absolute CCP2CON.2;
  CCP2CON_CCP2M1    : bit  absolute CCP2CON.1;
  CCP2CON_CCP2M0    : bit  absolute CCP2CON.0;
  ADRESH            : byte absolute $001E;
  ADCON0            : byte absolute $001F;
  ADCON0_ADCS1      : bit  absolute ADCON0.7;
  ADCON0_ADCS0      : bit  absolute ADCON0.6;
  ADCON0_CHS2       : bit  absolute ADCON0.5;
  ADCON0_CHS1       : bit  absolute ADCON0.4;
  ADCON0_CHS0       : bit  absolute ADCON0.3;
  ADCON0_GO_nDONE   : bit  absolute ADCON0.2;
  ADCON0_ADON       : bit  absolute ADCON0.0;
  OPTION_REG        : byte absolute $0081;
  OPTION_REG_nRBPU  : bit  absolute OPTION_REG.7;
  OPTION_REG_INTEDG : bit  absolute OPTION_REG.6;
  OPTION_REG_T0CS   : bit  absolute OPTION_REG.5;
  OPTION_REG_T0SE   : bit  absolute OPTION_REG.4;
  OPTION_REG_PSA    : bit  absolute OPTION_REG.3;
  OPTION_REG_PS2    : bit  absolute OPTION_REG.2;
  OPTION_REG_PS1    : bit  absolute OPTION_REG.1;
  OPTION_REG_PS0    : bit  absolute OPTION_REG.0;
  TRISA             : byte absolute $0085;
  TRISA_TRISA5      : bit  absolute TRISA.5;
  TRISA_TRISA4      : bit  absolute TRISA.4;
  TRISA_TRISA3      : bit  absolute TRISA.3;
  TRISA_TRISA2      : bit  absolute TRISA.2;
  TRISA_TRISA1      : bit  absolute TRISA.1;
  TRISA_TRISA0      : bit  absolute TRISA.0;
  TRISB             : byte absolute $0086;
  TRISB_TRISB7      : bit  absolute TRISB.7;
  TRISB_TRISB6      : bit  absolute TRISB.6;
  TRISB_TRISB5      : bit  absolute TRISB.5;
  TRISB_TRISB4      : bit  absolute TRISB.4;
  TRISB_TRISB3      : bit  absolute TRISB.3;
  TRISB_TRISB2      : bit  absolute TRISB.2;
  TRISB_TRISB1      : bit  absolute TRISB.1;
  TRISB_TRISB0      : bit  absolute TRISB.0;
  TRISC             : byte absolute $0087;
  TRISC_TRISC7      : bit  absolute TRISC.7;
  TRISC_TRISC6      : bit  absolute TRISC.6;
  TRISC_TRISC5      : bit  absolute TRISC.5;
  TRISC_TRISC4      : bit  absolute TRISC.4;
  TRISC_TRISC3      : bit  absolute TRISC.3;
  TRISC_TRISC2      : bit  absolute TRISC.2;
  TRISC_TRISC1      : bit  absolute TRISC.1;
  TRISC_TRISC0      : bit  absolute TRISC.0;
  TRISD             : byte absolute $0088;
  TRISD_TRISD7      : bit  absolute TRISD.7;
  TRISD_TRISD6      : bit  absolute TRISD.6;
  TRISD_TRISD5      : bit  absolute TRISD.5;
  TRISD_TRISD4      : bit  absolute TRISD.4;
  TRISD_TRISD3      : bit  absolute TRISD.3;
  TRISD_TRISD2      : bit  absolute TRISD.2;
  TRISD_TRISD1      : bit  absolute TRISD.1;
  TRISD_TRISD0      : bit  absolute TRISD.0;
  TRISE             : byte absolute $0089;
  TRISE_IBF         : bit  absolute TRISE.7;
  TRISE_OBF         : bit  absolute TRISE.6;
  TRISE_IBOV        : bit  absolute TRISE.5;
  TRISE_PSPMODE     : bit  absolute TRISE.4;
  TRISE_TRISE2      : bit  absolute TRISE.2;
  TRISE_TRISE1      : bit  absolute TRISE.1;
  TRISE_TRISE0      : bit  absolute TRISE.0;
  PIE1              : byte absolute $008C;
  PIE1_PSPIE        : bit  absolute PIE1.7;
  PIE1_ADIE         : bit  absolute PIE1.6;
  PIE1_RCIE         : bit  absolute PIE1.5;
  PIE1_TXIE         : bit  absolute PIE1.4;
  PIE1_SSPIE        : bit  absolute PIE1.3;
  PIE1_CCP1IE       : bit  absolute PIE1.2;
  PIE1_TMR2IE       : bit  absolute PIE1.1;
  PIE1_TMR1IE       : bit  absolute PIE1.0;
  PIE2              : byte absolute $008D;
  PIE2_CMIE         : bit  absolute PIE2.6;
  PIE2_EEIE         : bit  absolute PIE2.4;
  PIE2_BCLIE        : bit  absolute PIE2.3;
  PIE2_CCP2IE       : bit  absolute PIE2.0;
  PCON              : byte absolute $008E;
  PCON_nPOR         : bit  absolute PCON.1;
  PCON_nBOR         : bit  absolute PCON.0;
  SSPCON2           : byte absolute $0091;
  SSPCON2_GCEN      : bit  absolute SSPCON2.7;
  SSPCON2_ACKSTAT   : bit  absolute SSPCON2.6;
  SSPCON2_ACKDT     : bit  absolute SSPCON2.5;
  SSPCON2_ACKEN     : bit  absolute SSPCON2.4;
  SSPCON2_RCEN      : bit  absolute SSPCON2.3;
  SSPCON2_PEN       : bit  absolute SSPCON2.2;
  SSPCON2_RSEN      : bit  absolute SSPCON2.1;
  SSPCON2_SEN       : bit  absolute SSPCON2.0;
  PR2               : byte absolute $0092;
  SSPADD            : byte absolute $0093;
  SSPSTAT           : byte absolute $0094;
  SSPSTAT_SMP       : bit  absolute SSPSTAT.7;
  SSPSTAT_CKE       : bit  absolute SSPSTAT.6;
  SSPSTAT_D_nA      : bit  absolute SSPSTAT.5;
  SSPSTAT_P         : bit  absolute SSPSTAT.4;
  SSPSTAT_S         : bit  absolute SSPSTAT.3;
  SSPSTAT_R_nW      : bit  absolute SSPSTAT.2;
  SSPSTAT_UA        : bit  absolute SSPSTAT.1;
  SSPSTAT_BF        : bit  absolute SSPSTAT.0;
  TXSTA             : byte absolute $0098;
  TXSTA_CSRC        : bit  absolute TXSTA.7;
  TXSTA_TX9         : bit  absolute TXSTA.6;
  TXSTA_TXEN        : bit  absolute TXSTA.5;
  TXSTA_SYNC        : bit  absolute TXSTA.4;
  TXSTA_BRGH        : bit  absolute TXSTA.2;
  TXSTA_TRMT        : bit  absolute TXSTA.1;
  TXSTA_TX9D        : bit  absolute TXSTA.0;
  SPBRG             : byte absolute $0099;
  CMCON             : byte absolute $009C;
  CMCON_C2OUT       : bit  absolute CMCON.7;
  CMCON_C1OUT       : bit  absolute CMCON.6;
  CMCON_C2INV       : bit  absolute CMCON.5;
  CMCON_C1INV       : bit  absolute CMCON.4;
  CMCON_CIS         : bit  absolute CMCON.3;
  CMCON_CM2         : bit  absolute CMCON.2;
  CMCON_CM1         : bit  absolute CMCON.1;
  CMCON_CM0         : bit  absolute CMCON.0;
  CVRCON            : byte absolute $009D;
  CVRCON_CVREN      : bit  absolute CVRCON.7;
  CVRCON_CVROE      : bit  absolute CVRCON.6;
  CVRCON_CVRR       : bit  absolute CVRCON.5;
  CVRCON_CVR3       : bit  absolute CVRCON.3;
  CVRCON_CVR2       : bit  absolute CVRCON.2;
  CVRCON_CVR1       : bit  absolute CVRCON.1;
  CVRCON_CVR0       : bit  absolute CVRCON.0;
  ADRESL            : byte absolute $009E;
  ADCON1            : byte absolute $009F;
  ADCON1_ADFM       : bit  absolute ADCON1.7;
  ADCON1_ADCS2      : bit  absolute ADCON1.6;
  ADCON1_PCFG3      : bit  absolute ADCON1.3;
  ADCON1_PCFG2      : bit  absolute ADCON1.2;
  ADCON1_PCFG1      : bit  absolute ADCON1.1;
  ADCON1_PCFG0      : bit  absolute ADCON1.0;
  EEDATA            : byte absolute $010C;
  EEADR             : byte absolute $010D;
  EEDATH            : byte absolute $010E;
  EEDATH_EEDATH5    : bit  absolute EEDATH.5;
  EEDATH_EEDATH4    : bit  absolute EEDATH.4;
  EEDATH_EEDATH3    : bit  absolute EEDATH.3;
  EEDATH_EEDATH2    : bit  absolute EEDATH.2;
  EEDATH_EEDATH1    : bit  absolute EEDATH.1;
  EEDATH_EEDATH0    : bit  absolute EEDATH.0;
  EEADRH            : byte absolute $010F;
  EEADRH_EEADRH4    : bit  absolute EEADRH.4;
  EEADRH_EEADRH3    : bit  absolute EEADRH.3;
  EEADRH_EEADRH2    : bit  absolute EEADRH.2;
  EEADRH_EEADRH1    : bit  absolute EEADRH.1;
  EEADRH_EEADRH0    : bit  absolute EEADRH.0;
  EECON1            : byte absolute $018C;
  EECON1_EEPGD      : bit  absolute EECON1.7;
  EECON1_WRERR      : bit  absolute EECON1.3;
  EECON1_WREN       : bit  absolute EECON1.2;
  EECON1_WR         : bit  absolute EECON1.1;
  EECON1_RD         : bit  absolute EECON1.0;
  EECON2            : byte absolute $018D;


  // -- Define RAM state values --

  {$CLEAR_STATE_RAM}

  {$SET_STATE_RAM '000-01F:SFR'}  // INDF, TMR0, PCL, STATUS, FSR, PORTA, PORTB, PORTC, PORTD, PORTE, PCLATH, INTCON, PIR1, PIR2, TMR1L, TMR1H, T1CON, TMR2, T2CON, SSPBUF, SSPCON, CCPR1L, CCPR1H, CCP1CON, RCSTA, TXREG, RCREG, CCPR2L, CCPR2H, CCP2CON, ADRESH, ADCON0
  {$SET_STATE_RAM '020-06F:GPR'} 
  {$SET_STATE_RAM '070-07F:GPR'} 
  {$SET_STATE_RAM '080-080:SFR'}  // mapped to INDF
  {$SET_STATE_RAM '081-081:SFR'}  // OPTION_REG
  {$SET_STATE_RAM '082-084:SFR'}  // mapped to PCL, STATUS, FSR
  {$SET_STATE_RAM '085-089:SFR'}  // TRISA, TRISB, TRISC, TRISD, TRISE
  {$SET_STATE_RAM '08A-08B:SFR'}  // mapped to PCLATH, INTCON
  {$SET_STATE_RAM '08C-08E:SFR'}  // PIE1, PIE2, PCON
  {$SET_STATE_RAM '091-094:SFR'}  // SSPCON2, PR2, SSPADD, SSPSTAT
  {$SET_STATE_RAM '098-099:SFR'}  // TXSTA, SPBRG
  {$SET_STATE_RAM '09C-09F:SFR'}  // CMCON, CVRCON, ADRESL, ADCON1
  {$SET_STATE_RAM '0A0-0EF:GPR'} 
  {$SET_STATE_RAM '0F0-0FF:GPR'} 
  {$SET_STATE_RAM '100-104:SFR'}  // mapped to INDF, TMR0, PCL, STATUS, FSR
  {$SET_STATE_RAM '106-106:SFR'}  // mapped to PORTB
  {$SET_STATE_RAM '10A-10B:SFR'}  // mapped to PCLATH, INTCON
  {$SET_STATE_RAM '10C-10F:SFR'}  // EEDATA, EEADR, EEDATH, EEADRH
  {$SET_STATE_RAM '110-16F:GPR'} 
  {$SET_STATE_RAM '170-17F:GPR'} 
  {$SET_STATE_RAM '180-184:SFR'}  // mapped to INDF, OPTION_REG, PCL, STATUS, FSR
  {$SET_STATE_RAM '186-186:SFR'}  // mapped to TRISB
  {$SET_STATE_RAM '18A-18B:SFR'}  // mapped to PCLATH, INTCON
  {$SET_STATE_RAM '18C-18D:SFR'}  // EECON1, EECON2
  {$SET_STATE_RAM '190-1EF:GPR'} 
  {$SET_STATE_RAM '1F0-1FF:GPR'} 


  // -- Define mapped RAM --

  {$SET_MAPPED_RAM '080-080:bnk0'} // maps to INDF (bank 0)
  {$SET_MAPPED_RAM '082-084:bnk0'} // maps to PCL, STATUS, FSR (bank 0)
  {$SET_MAPPED_RAM '08A-08B:bnk0'} // maps to PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '0F0-0FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '100-100:bnk0'} // maps to INDF (bank 0)
  {$SET_MAPPED_RAM '101-101:bnk0'} // maps to TMR0 (bank 0)
  {$SET_MAPPED_RAM '102-104:bnk0'} // maps to PCL, STATUS, FSR (bank 0)
  {$SET_MAPPED_RAM '106-106:bnk0'} // maps to PORTB (bank 0)
  {$SET_MAPPED_RAM '10A-10B:bnk0'} // maps to PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '170-17F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '180-180:bnk0'} // maps to INDF (bank 0)
  {$SET_MAPPED_RAM '181-181:bnk1'} // maps to OPTION_REG (bank 1)
  {$SET_MAPPED_RAM '182-184:bnk0'} // maps to PCL, STATUS, FSR (bank 0)
  {$SET_MAPPED_RAM '186-186:bnk1'} // maps to TRISB (bank 1)
  {$SET_MAPPED_RAM '18A-18B:bnk0'} // maps to PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1F0-1FF:bnk0'} // maps to area 070-07F (bank 0)


  // -- Un-implemented fields --

  {$SET_UNIMP_BITS '005:3F'} // PORTA bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '009:07'} // PORTE bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '00A:1F'} // PCLATH bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '00D:59'} // PIR2 bits 7,5,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '010:3F'} // T1CON bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '012:7F'} // T2CON bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '017:3F'} // CCP1CON bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '01D:3F'} // CCP2CON bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '01F:FD'} // ADCON0 bit 1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '085:3F'} // TRISA bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '089:F7'} // TRISE bit 3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '08D:59'} // PIE2 bits 7,5,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '08E:03'} // PCON bits 7,6,5,4,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '098:F7'} // TXSTA bit 3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '09D:EF'} // CVRCON bit 4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '09F:CF'} // ADCON1 bits 5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '10E:3F'} // EEDATH bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '10F:1F'} // EEADRH bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '18C:8F'} // EECON1 bits 6,5,4 un-implemented (read as 0)


  // -- PIN mapping --

  // Pin  1 : MCLR/VPP
  // Pin  2 : RA0/AN0
  // Pin  3 : RA1/AN1
  // Pin  4 : RA2/AN2/VREF-/CVREF
  // Pin  5 : RA3/AN3/VREF+
  // Pin  6 : RA4/T0CKI/C1OUT
  // Pin  7 : RA5/AN4/SS/C2OUT
  // Pin  8 : RE0/RD/AN5
  // Pin  9 : RE1/WR/AN6
  // Pin 10 : RE2/CS/AN7
  // Pin 11 : VDD
  // Pin 12 : VSS
  // Pin 13 : OSC1/CLKI
  // Pin 14 : OSC2/CLKO
  // Pin 15 : RC0/T1OSO/T1CKI
  // Pin 16 : RC1/T1OSI/CCP2
  // Pin 17 : RC2/CCP1
  // Pin 18 : RC3/SCK/SCL
  // Pin 19 : RD0/PSP0
  // Pin 20 : RD1/PSP1
  // Pin 21 : RD2/PSP2
  // Pin 22 : RD3/PSP3
  // Pin 23 : RC4/SDI/SDA
  // Pin 24 : RC5/SDO
  // Pin 25 : RC6/TX/CK
  // Pin 26 : RC7/RX/DT
  // Pin 27 : RD4/PSP4
  // Pin 28 : RD5/PSP5
  // Pin 29 : RD6/PSP6
  // Pin 30 : RD7/PSP7
  // Pin 31 : VSS
  // Pin 32 : VDD
  // Pin 33 : RB0/INT
  // Pin 34 : RB1
  // Pin 35 : RB2
  // Pin 36 : RB3/PGM
  // Pin 37 : RB4
  // Pin 38 : RB5
  // Pin 39 : RB6/PGC
  // Pin 40 : RB7/PGD


  // -- RAM to PIN mapping --

  {$MAP_RAM_TO_PIN '005:0-2,1-3,2-4,3-5,4-6,5-7'} // PORTA
  {$MAP_RAM_TO_PIN '006:0-33,1-34,2-35,3-36,4-37,5-38,6-39,7-40'} // PORTB
  {$MAP_RAM_TO_PIN '007:0-15,1-16,2-17,3-18,4-23,5-24,6-25,7-26'} // PORTC
  {$MAP_RAM_TO_PIN '008:0-19,1-20,2-21,3-22,4-27,5-28,6-29,7-30'} // PORTD
  {$MAP_RAM_TO_PIN '009:0-8,1-9,2-10'} // PORTE


  // -- Bits Configuration --

  // FOSC : Oscillator Selection bits
  {$define _FOSC_EXTRC  = $3FFF}  // RC oscillator
  {$define _FOSC_HS     = $3FFE}  // HS oscillator
  {$define _FOSC_XT     = $3FFD}  // XT oscillator
  {$define _FOSC_LP     = $3FFC}  // LP oscillator

  // WDTE : Watchdog Timer Enable bit
  {$define _WDTE_ON     = $3FFF}  // WDT enabled
  {$define _WDTE_OFF    = $3FFB}  // WDT disabled

  // PWRTE : Power-up Timer Enable bit
  {$define _PWRTE_OFF   = $3FFF}  // PWRT disabled
  {$define _PWRTE_ON    = $3FF7}  // PWRT enabled

  // BOREN : Brown-out Reset Enable bit
  {$define _BOREN_ON    = $3FFF}  // BOR enabled
  {$define _BOREN_OFF   = $3FBF}  // BOR disabled

  // LVP : Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit
  {$define _LVP_ON      = $3FFF}  // RB3/PGM pin has PGM function; low-voltage programming enabled
  {$define _LVP_OFF     = $3F7F}  // RB3 is digital I/O, HV on MCLR must be used for programming

  // CPD : Data EEPROM Memory Code Protection bit
  {$define _CPD_OFF     = $3FFF}  // Data EEPROM code protection off
  {$define _CPD_ON      = $3EFF}  // Data EEPROM code-protected

  // WRT : Flash Program Memory Write Enable bits
  {$define _WRT_OFF     = $3FFF}  // Write protection off; all program memory may be written to by EECON control
  {$define _WRT_256     = $3DFF}  // 0000h to 00FFh write-protected; 0100h to 1FFFh may be written to by EECON control
  {$define _WRT_1FOURTH = $3BFF}  // 0000h to 07FFh write-protected; 0800h to 1FFFh may be written to by EECON control
  {$define _WRT_HALF    = $39FF}  // 0000h to 0FFFh write-protected; 1000h to 1FFFh may be written to by EECON control

  // DEBUG : In-Circuit Debugger Mode bit
  {$define _DEBUG_OFF   = $3FFF}  // In-Circuit Debugger disabled, RB6 and RB7 are general purpose I/O pins
  {$define _DEBUG_ON    = $37FF}  // In-Circuit Debugger enabled, RB6 and RB7 are dedicated to the debugger

  // CP : Flash Program Memory Code Protection bit
  {$define _CP_OFF      = $3FFF}  // Code protection off
  {$define _CP_ON       = $1FFF}  // All program memory code-protected

implementation
end.
