.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener
.super android/telephony/PhoneStateListener
.inner class MyPhoneStateListener inner com/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener outer com/nd/android/u/ui/widge/NewTalkPopWindow

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/NewTalkPopWindow;

.method <init>(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
aload 0
invokespecial android/telephony/PhoneStateListener/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
iload 1
tableswitch 0
L0
L1
default : L0
L0:
return
L1:
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
iconst_1
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$002(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;Z)Z
pop
return
.limit locals 3
.limit stack 2
.end method
