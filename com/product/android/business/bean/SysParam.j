.bytecode 50.0
.class public synchronized com/product/android/business/bean/SysParam
.super java/lang/Object

.field public static final 'ALREADY_GET' I = 1


.field public static final 'FAIL_GET_INTERR' I = 2


.field public static final 'PARAM_INIT' I = 0


.field public static final 'WAIT_GET' I = 3


.field private static 'instance' Lcom/product/android/business/bean/SysParam;

.field private 'obtainApp' I

.field private 'obtainFriend' I

.field private 'obtainGroup' I

.field private 'obtainGroupLogin' I

.field public 'obtainPspGroup' I

.field private 'obtainUnitContact' I

.field private 'obtainUpdateTime' I

.field private 'obtainupdateWeibo' I

.field private 'obtainupdatebirthdayremind' I

.field private 'obtainupdateblacklist' I

.field private 'obtainupdateflowermsg' I

.method static <clinit>()V
new com/product/android/business/bean/SysParam
dup
invokespecial com/product/android/business/bean/SysParam/<init>()V
putstatic com/product/android/business/bean/SysParam/instance Lcom/product/android/business/bean/SysParam;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainApp I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainUnitContact I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainGroup I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainFriend I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainUpdateTime I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainupdateWeibo I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainupdateblacklist I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainupdateflowermsg I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainupdatebirthdayremind I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainPspGroup I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainGroupLogin I
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/product/android/business/bean/SysParam;
getstatic com/product/android/business/bean/SysParam/instance Lcom/product/android/business/bean/SysParam;
areturn
.limit locals 0
.limit stack 1
.end method

.method public clear()V
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainApp I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainUnitContact I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainGroup I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainFriend I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainUpdateTime I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainupdateWeibo I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainupdateblacklist I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainGroupLogin I
aload 0
iconst_0
putfield com/product/android/business/bean/SysParam/obtainPspGroup I
return
.limit locals 1
.limit stack 2
.end method

.method public getObtainApp()I
aload 0
getfield com/product/android/business/bean/SysParam/obtainApp I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObtainFriend()I
aload 0
getfield com/product/android/business/bean/SysParam/obtainFriend I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObtainGroup()I
aload 0
getfield com/product/android/business/bean/SysParam/obtainGroup I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObtainGroupLogin()I
aload 0
getfield com/product/android/business/bean/SysParam/obtainGroupLogin I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObtainUnitContact()I
aload 0
getfield com/product/android/business/bean/SysParam/obtainUnitContact I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObtainUpdateTime()I
aload 0
getfield com/product/android/business/bean/SysParam/obtainUpdateTime I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObtainupdateWeibo()I
aload 0
getfield com/product/android/business/bean/SysParam/obtainupdateWeibo I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObtainupdatebirthdayremind()I
aload 0
getfield com/product/android/business/bean/SysParam/obtainupdatebirthdayremind I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObtainupdateblacklist()I
aload 0
getfield com/product/android/business/bean/SysParam/obtainupdateblacklist I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObtainupdateflowermsg()I
aload 0
getfield com/product/android/business/bean/SysParam/obtainupdateflowermsg I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setObtainApp(I)V
aload 0
iload 1
putfield com/product/android/business/bean/SysParam/obtainApp I
return
.limit locals 2
.limit stack 2
.end method

.method public setObtainFriend(I)V
aload 0
iload 1
putfield com/product/android/business/bean/SysParam/obtainFriend I
return
.limit locals 2
.limit stack 2
.end method

.method public setObtainGroup(I)V
aload 0
iload 1
putfield com/product/android/business/bean/SysParam/obtainGroup I
return
.limit locals 2
.limit stack 2
.end method

.method public setObtainGroupLogin(I)V
aload 0
iload 1
putfield com/product/android/business/bean/SysParam/obtainGroupLogin I
return
.limit locals 2
.limit stack 2
.end method

.method public setObtainUnitContact(I)V
aload 0
iload 1
putfield com/product/android/business/bean/SysParam/obtainUnitContact I
return
.limit locals 2
.limit stack 2
.end method

.method public setObtainUpdateTime(I)V
aload 0
iload 1
putfield com/product/android/business/bean/SysParam/obtainUpdateTime I
return
.limit locals 2
.limit stack 2
.end method

.method public setObtainupdateWeibo(I)V
aload 0
iload 1
putfield com/product/android/business/bean/SysParam/obtainupdateWeibo I
return
.limit locals 2
.limit stack 2
.end method

.method public setObtainupdatebirthdayremind(I)V
aload 0
iload 1
putfield com/product/android/business/bean/SysParam/obtainupdatebirthdayremind I
return
.limit locals 2
.limit stack 2
.end method

.method public setObtainupdateblacklist(I)V
aload 0
iload 1
putfield com/product/android/business/bean/SysParam/obtainupdateblacklist I
return
.limit locals 2
.limit stack 2
.end method

.method public setObtainupdateflowermsg(I)V
aload 0
iload 1
putfield com/product/android/business/bean/SysParam/obtainupdateflowermsg I
return
.limit locals 2
.limit stack 2
.end method
