import android.hardware.usb.UsbManager;
import android.app.Activity;
import cn.wch.ch34xuartdriver.CH34xUARTDriver;
import android.os.Bundle;


public class MyActivity {
  private static final String ACTION_USB_PERMISSION = "cn.wch.wchusbdriver.USB_PERMISSION";
  PApplet parent;
  Context context;
  String read_recv = "";
  public CH34xUARTDriver usbdriver;
  
  public MyActivity(PApplet parent){
    this.parent = parent;
    this.context = parent.getActivity();
    usbdriver = new CH34xUARTDriver((UsbManager)context.getSystemService(Context.USB_SERVICE),context,ACTION_USB_PERMISSION);
  }
  
  

}
