.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/WXAppLaunchData$Builder
.super java/lang/Object
.inner class public static Builder inner com/tencent/mm/sdk/modelmsg/WXAppLaunchData$Builder outer com/tencent/mm/sdk/modelmsg/WXAppLaunchData

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData;
new com/tencent/mm/sdk/modelmsg/WXAppLaunchData
dup
invokespecial com/tencent/mm/sdk/modelmsg/WXAppLaunchData/<init>()V
astore 1
aload 1
aload 0
ldc "_wxapplaunchdata_launchType"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/tencent/mm/sdk/modelmsg/WXAppLaunchData/launchType I
aload 1
aload 0
ldc "_wxapplaunchdata_message"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXAppLaunchData/message Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public static toBundle(Lcom/tencent/mm/sdk/modelmsg/WXAppLaunchData;)Landroid/os/Bundle;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "_wxapplaunchdata_launchType"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppLaunchData/launchType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "_wxapplaunchdata_message"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppLaunchData/message Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method
