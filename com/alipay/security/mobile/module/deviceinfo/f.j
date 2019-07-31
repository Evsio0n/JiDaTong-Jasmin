.bytecode 50.0
.class final synchronized com/alipay/security/mobile/module/deviceinfo/f
.super android/telephony/PhoneStateListener

.field final synthetic 'a' Lcom/alipay/security/mobile/module/deviceinfo/e;

.field final synthetic 'b' Landroid/telephony/TelephonyManager;

.method <init>(Lcom/alipay/security/mobile/module/deviceinfo/e;Landroid/telephony/TelephonyManager;)V
aload 0
aload 1
putfield com/alipay/security/mobile/module/deviceinfo/f/a Lcom/alipay/security/mobile/module/deviceinfo/e;
aload 0
aload 2
putfield com/alipay/security/mobile/module/deviceinfo/f/b Landroid/telephony/TelephonyManager;
aload 0
invokespecial android/telephony/PhoneStateListener/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
aload 0
aload 1
invokespecial android/telephony/PhoneStateListener/onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
aload 1
ifnull L0
aload 0
getfield com/alipay/security/mobile/module/deviceinfo/f/a Lcom/alipay/security/mobile/module/deviceinfo/e;
aload 1
invokevirtual android/telephony/SignalStrength/getGsmSignalStrength()I
putfield com/alipay/security/mobile/module/deviceinfo/e/a I
L0:
aload 0
getfield com/alipay/security/mobile/module/deviceinfo/f/b Landroid/telephony/TelephonyManager;
aload 0
iconst_0
invokevirtual android/telephony/TelephonyManager/listen(Landroid/telephony/PhoneStateListener;I)V
return
.limit locals 2
.limit stack 3
.end method
