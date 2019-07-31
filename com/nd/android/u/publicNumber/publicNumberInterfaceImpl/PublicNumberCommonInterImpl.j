.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/publicNumberInterfaceImpl/PublicNumberCommonInterImpl
.super java/lang/Object
.implements com/product/android/commonInterface/ICommonInterObserver

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I
iload 1
lookupswitch
20072 : L0
20074 : L1
20075 : L2
20077 : L3
21073 : L4
default : L2
L2:
iconst_0
ireturn
L0:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
new android/content/Intent
dup
aload 2
ldc com/nd/android/u/publicNumber/ui/activity/PspActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
aload 3
ldc_w 335544320
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 2
aload 3
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
ireturn
L4:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
getfield com/product/android/business/bean/SysParam/obtainPspGroup I
iconst_1
if_icmpeq L2
aload 2
ifnull L5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifne L6
L5:
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMyFocusPublicNumberFromServer()Ljava/util/ArrayList;
pop
iconst_0
ireturn
L6:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMyFocusPublicNumberFromDb()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifgt L2
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMyFocusPublicNumberFromServer()Ljava/util/ArrayList;
pop
iconst_0
ireturn
L1:
aload 2
ifnonnull L7
iconst_m1
ireturn
L7:
aload 2
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CONFIG_PSP_NEW"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
aload 3
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadIntKey(Ljava/lang/String;I)I
ifne L2
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
ireturn
L3:
aload 2
ifnull L8
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L9
L8:
iconst_m1
ireturn
L9:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
aload 2
new android/content/Intent
dup
aload 2
ldc com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
ireturn
.limit locals 4
.limit stack 5
.end method
