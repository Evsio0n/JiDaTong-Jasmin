.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/appCreator/MySeniorAppCreator
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IMessageCreator

.field public static final 'NEW_JUNIOR_REQUEST' Ljava/lang/String;

.method static <clinit>()V
getstatic com/nd/android/u/cloud/XYExtentConfig/CONTACT_NEW_JUNIOR_REQUEST_CODE Ljava/lang/String;
putstatic com/nd/android/u/cloud/customapplication/appCreator/MySeniorAppCreator/NEW_JUNIOR_REQUEST Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private getMyApp(Ljava/lang/String;)Lcom/nd/android/u/bean4xy/DisplayMessage_App;
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifeq L0
aload 1
getstatic com/nd/android/u/cloud/customapplication/appCreator/MySeniorAppCreator/NEW_JUNIOR_REQUEST Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewJuniorRequest
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewJuniorRequest/<init>()V
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
.signature "(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class<*>;"
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
aload 2
invokespecial com/nd/android/u/cloud/customapplication/appCreator/MySeniorAppCreator/getMyApp(Ljava/lang/String;)Lcom/nd/android/u/bean4xy/DisplayMessage_App;
astore 3
aload 3
ifnull L0
aload 3
aload 2
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
aload 3
iload 1
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appId I
L0:
aload 3
areturn
.limit locals 4
.limit stack 2
.end method

.method public getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
aconst_null
areturn
.limit locals 4
.limit stack 1
.end method
