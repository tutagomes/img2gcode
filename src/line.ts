/**
 * Line
*/
export default class Line {
  private _sign: string = '-';//en file esta como Y-
  /**
   * @param  {x?:number; y?:number; z?:number;} axes 
   * @param  {string} comment? 
   */
  constructor(axes: ImgToGCode.Axes, comment?: string) {
    this._axes = axes;
    //this._sign = '-';//en file esta como Y-
    if (comment) { this._comment = comment; }
  }

  private _comment: string;
  public get comment(): string {
    return this._comment;
  }
  public set comment(v: string) {
    this._comment = v;
  }

  private _axes: ImgToGCode.Axes;
  public get axes(): ImgToGCode.Axes {
    return this._axes;
  }

  /**
   * code
   * Arma code for that line with data
   */
  public code(percentage: number): string {
    let x = this._axes.x !== undefined ? ` X${this._axes.x}` : '';
    let y = this._axes.y !== undefined ? ` Y${this._sign}${this._axes.y}` : '';
    let z = this._axes.z !== undefined ? ` Z${this._axes.z.safe ? this._axes.z.val : this._axes.z.val * percentage}` : '';
    let comment = this._comment ? `; ${this._comment}` : '';
    return "G01" + x + y + z + comment;
  }
}