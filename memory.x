MEMORY
{
  /* 2023-02-01. modified for msp430f5529. Found correct values in msp430-periph crate. */
  /* These values are correct for the msp430g2553 device. You will need to
     modify these values if using a different device. Room must be reserved
     for interrupt vectors plus reset vector and the end of the first 64kB
     of address space. */
  RAM : ORIGIN = 0x2400, LENGTH = 0x2000 /* END=0x43FF, size 8192 */
  ROM (rx) : ORIGIN = 0x4400, LENGTH = 0xBB80 /* END=0xFF7F, size 48000 */
  VECTORS : ORIGIN = 0xff80, LENGTH = 0x0080
}

/* Stack begins at the end of RAM:
   _stack_start = ORIGIN(RAM) + LENGTH(RAM); */

/* TODO: Code (and data?) above 64kB mark, which is supported even without
   using MSP430X mode. */
