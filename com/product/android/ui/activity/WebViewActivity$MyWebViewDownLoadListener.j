.bytecode 50.0
.class synchronized com/product/android/ui/activity/WebViewActivity$MyWebViewDownLoadListener
.super java/lang/Object
.implements android/webkit/DownloadListener
.inner class private MyWebViewDownLoadListener inner com/product/android/ui/activity/WebViewActivity$MyWebViewDownLoadListener outer com/product/android/ui/activity/WebViewActivity

.field final synthetic 'this$0' Lcom/product/android/ui/activity/WebViewActivity;

.method private <init>(Lcom/product/android/ui/activity/WebViewActivity;)V
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity$MyWebViewDownLoadListener/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/product/android/ui/activity/WebViewActivity;Lcom/product/android/ui/activity/WebViewActivity$1;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/WebViewActivity$MyWebViewDownLoadListener/<init>(Lcom/product/android/ui/activity/WebViewActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/IllegalArgumentException from L0 to L1 using L3
.catch java/lang/IllegalStateException from L0 to L1 using L4
.catch java/io/IOException from L5 to L6 using L2
.catch java/lang/IllegalArgumentException from L5 to L6 using L3
.catch java/lang/IllegalStateException from L5 to L6 using L4
ldc "tag"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/i(Ljava/lang/String;Ljava/lang/String;)V
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
aload 3
ldc ";"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 2
iconst_0
istore 9
iconst_0
istore 7
aload 2
arraylength
istore 10
L8:
iload 9
istore 8
iload 7
iload 10
if_icmpge L9
aload 2
iload 7
aaload
ldc ".amr"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
ifle L10
iconst_1
istore 8
L9:
iload 8
ifeq L7
L0:
aload 1
invokestatic com/product/android/utils/FileHelper/getDefaultAudioFile(Ljava/lang/String;)Ljava/io/File;
astore 2
L1:
aload 2
ifnull L11
L5:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L11
ldc "debug"
ldc "audio already download"
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity$MyWebViewDownLoadListener/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$500(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/common/android/utils/audio/AudioAnimManager;
aload 2
invokevirtual com/common/android/utils/audio/AudioAnimManager/playAudio(Ljava/io/File;)V
L6:
return
L10:
iload 7
iconst_1
iadd
istore 7
goto L8
L2:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
L11:
aload 0
getfield com/product/android/ui/activity/WebViewActivity$MyWebViewDownLoadListener/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 1
invokestatic com/product/android/ui/activity/WebViewActivity/access$1500(Lcom/product/android/ui/activity/WebViewActivity;Ljava/lang/String;)V
return
L3:
astore 2
aload 2
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L11
L4:
astore 2
aload 2
invokevirtual java/lang/IllegalStateException/printStackTrace()V
goto L11
L7:
aload 0
getfield com/product/android/ui/activity/WebViewActivity$MyWebViewDownLoadListener/this$0 Lcom/product/android/ui/activity/WebViewActivity;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/ui/activity/WebViewActivity/access$1600(Lcom/product/android/ui/activity/WebViewActivity;Ljava/lang/String;)V
return
.limit locals 11
.limit stack 3
.end method
