.bytecode 50.0
.class synchronized com/nd/android/u/cloud/OapApplication$4
.super java/lang/Object
.implements com/nd/android/forumsdk/business/com/httptool/IGetConfig
.enclosing method com/nd/android/u/cloud/OapApplication/initForumSDK()V
.inner class inner com/nd/android/u/cloud/OapApplication$4

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/OapApplication;

.method <init>(Lcom/nd/android/u/cloud/OapApplication;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/OapApplication$4/this$0 Lcom/nd/android/u/cloud/OapApplication;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getAppId()J
getstatic com/product/android/business/config/Configuration/OAP_APPID I
i2l
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getCloudID()Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getContext()Landroid/content/Context;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFileDownloadUrl(JI)Ljava/lang/String;
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
iload 3
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getDownUrlByFid(JLjava/lang/String;I)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 5
.end method

.method public getForumApiKey()Ljava/lang/String;
getstatic com/nd/android/u/cloud/XYExtentConfig/FORUM_API_KEY Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNewSid()Ljava/lang/String;
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$MainModel/getRelginSid()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSid()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lreturn
.limit locals 1
.limit stack 2
.end method
