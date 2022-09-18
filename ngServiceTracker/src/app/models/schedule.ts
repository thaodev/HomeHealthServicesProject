export class Schedule {
  id: number;
  date: string;
  billAmount: number;
  payrollAmount: number;
  scheduleStatus: string;
  billStatus: string;
  payrollStatus: string;

  constructor( id: number,
    date: string,
    billAmount: number,
    payrollAmount: number,
    scheduleStatus: string,
    billStatus: string,
    payrollStatus: string) {
      this.id = id;
      this.date = date;
      this.billAmount = billAmount;
      this.payrollAmount = payrollAmount;
      this.scheduleStatus = scheduleStatus;
      this.billStatus = billStatus;
      this.payrollStatus = payrollStatus;
    }

}
