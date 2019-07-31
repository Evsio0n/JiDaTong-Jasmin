.bytecode 50.0
.class synchronized com/hisun/b2c/api/core/IPOSUtils$AppInfo
.super java/lang/Object
.inner class private AppInfo inner com/hisun/b2c/api/core/IPOSUtils$AppInfo outer com/hisun/b2c/api/core/IPOSUtils

.field private 'appName' Ljava/lang/String;

.field private 'appSign' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/hisun/b2c/api/core/IPOSUtils;

.field private 'version' Ljava/lang/String;

.method private <init>(Lcom/hisun/b2c/api/core/IPOSUtils;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSUtils$AppInfo/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/hisun/b2c/api/core/IPOSUtils;Lcom/hisun/b2c/api/core/IPOSUtils$AppInfo;)V
aload 0
aload 1
invokespecial com/hisun/b2c/api/core/IPOSUtils$AppInfo/<init>(Lcom/hisun/b2c/api/core/IPOSUtils;)V
return
.limit locals 3
.limit stack 2
.end method

.method public getAppName()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$AppInfo/appName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAppSign()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$AppInfo/appSign Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getVersion()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$AppInfo/version Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAppName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSUtils$AppInfo/appName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setAppSign(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSUtils$AppInfo/appSign Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setVersion(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSUtils$AppInfo/version Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
