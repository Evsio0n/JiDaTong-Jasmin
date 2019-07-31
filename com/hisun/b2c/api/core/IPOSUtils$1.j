.bytecode 50.0
.class synchronized com/hisun/b2c/api/core/IPOSUtils$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/hisun/b2c/api/core/IPOSUtils
.inner class inner com/hisun/b2c/api/core/IPOSUtils$1

.field final synthetic 'this$0' Lcom/hisun/b2c/api/core/IPOSUtils;

.method <init>(Lcom/hisun/b2c/api/core/IPOSUtils;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch all from L12 to L13 using L3
.catch java/lang/Exception from L14 to L15 using L2
.catch all from L14 to L15 using L3
L0:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$0(Lcom/hisun/b2c/api/core/IPOSUtils;)Z
istore 1
L1:
iload 1
ifeq L4
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
sipush 402
invokevirtual com/hisun/b2c/api/core/IPOSUtils/sendMessage(I)V
return
L4:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$1(Lcom/hisun/b2c/api/core/IPOSUtils;)Ljava/lang/String;
astore 2
L5:
aload 2
ifnull L8
L6:
aload 2
ldc "NEWVERURL="
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L8
aload 2
ldc "NEWVERURL="
invokevirtual java/lang/String/length()I
aload 2
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 2
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$2(Lcom/hisun/b2c/api/core/IPOSUtils;)Lcom/hisun/b2c/api/core/NetworkManager;
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokevirtual com/hisun/b2c/api/core/IPOSUtils/getContext()Landroid/content/Context;
aload 2
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$3(Lcom/hisun/b2c/api/core/IPOSUtils;)Ljava/lang/String;
invokevirtual com/hisun/b2c/api/core/NetworkManager/urlDownloadToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
ifeq L7
new java/io/File
dup
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$3(Lcom/hisun/b2c/api/core/IPOSUtils;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L7
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
sipush 403
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$3(Lcom/hisun/b2c/api/core/IPOSUtils;)Ljava/lang/String;
invokevirtual com/hisun/b2c/api/core/IPOSUtils/sendMessage(ILjava/lang/Object;)V
L7:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
sipush 402
invokevirtual com/hisun/b2c/api/core/IPOSUtils/sendMessage(I)V
return
L8:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$4(Lcom/hisun/b2c/api/core/IPOSUtils;)Z
ifeq L10
ldc "IPOSBinder"
ldc "bpascal iposIsInstalled go to pay"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$5(Lcom/hisun/b2c/api/core/IPOSUtils;)V
L9:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
sipush 402
invokevirtual com/hisun/b2c/api/core/IPOSUtils/sendMessage(I)V
return
L10:
new java/io/File
dup
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$3(Lcom/hisun/b2c/api/core/IPOSUtils;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L14
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
sipush 403
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$3(Lcom/hisun/b2c/api/core/IPOSUtils;)Ljava/lang/String;
invokevirtual com/hisun/b2c/api/core/IPOSUtils/sendMessage(ILjava/lang/Object;)V
L11:
goto L7
L2:
astore 2
L12:
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
L13:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
sipush 402
invokevirtual com/hisun/b2c/api/core/IPOSUtils/sendMessage(I)V
return
L14:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
sipush 402
invokevirtual com/hisun/b2c/api/core/IPOSUtils/sendMessage(I)V
L15:
goto L7
L3:
astore 2
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$1/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
sipush 402
invokevirtual com/hisun/b2c/api/core/IPOSUtils/sendMessage(I)V
aload 2
athrow
.limit locals 3
.limit stack 4
.end method
