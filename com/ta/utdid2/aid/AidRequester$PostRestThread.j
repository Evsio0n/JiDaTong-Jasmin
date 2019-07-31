.bytecode 50.0
.class synchronized com/ta/utdid2/aid/AidRequester$PostRestThread
.super java/lang/Thread
.inner class PostRestThread inner com/ta/utdid2/aid/AidRequester$PostRestThread outer com/ta/utdid2/aid/AidRequester

.field 'mAppName' Ljava/lang/String;

.field 'mCallback' Lcom/ut/device/AidCallback;

.field 'mOldAid' Ljava/lang/String;

.field 'mPost' Lorg/apache/http/client/methods/HttpPost;

.field 'mRspLine' Ljava/lang/String;

.field 'mToken' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/ta/utdid2/aid/AidRequester;

.method public <init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;)V
aload 0
aload 1
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/this$0 Lcom/ta/utdid2/aid/AidRequester;
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
ldc ""
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/mRspLine Ljava/lang/String;
aload 0
ldc ""
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/mToken Ljava/lang/String;
aload 0
aload 2
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/mPost Lorg/apache/http/client/methods/HttpPost;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;Lcom/ut/device/AidCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/this$0 Lcom/ta/utdid2/aid/AidRequester;
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
ldc ""
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/mRspLine Ljava/lang/String;
aload 0
ldc ""
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/mToken Ljava/lang/String;
aload 0
aload 2
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/mPost Lorg/apache/http/client/methods/HttpPost;
aload 0
aload 3
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/mCallback Lcom/ut/device/AidCallback;
aload 0
aload 4
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/mOldAid Ljava/lang/String;
aload 0
aload 5
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/mAppName Ljava/lang/String;
aload 0
aload 6
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/mToken Ljava/lang/String;
return
.limit locals 7
.limit stack 2
.end method

.method public getResponseLine()Ljava/lang/String;
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mRspLine Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L8
.catch java/lang/Exception from L9 to L10 using L8
.catch java/lang/Exception from L10 to L11 using L8
.catch java/io/IOException from L12 to L13 using L14
.catch all from L15 to L16 using L17
.catch java/lang/Exception from L18 to L19 using L5
.catch java/lang/Exception from L20 to L21 using L8
aconst_null
astore 2
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mCallback Lcom/ut/device/AidCallback;
ifnull L22
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mCallback Lcom/ut/device/AidCallback;
sipush 1000
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mOldAid Ljava/lang/String;
invokeinterface com/ut/device/AidCallback/onAidEventChanged(ILjava/lang/String;)V 2
L22:
new org/apache/http/impl/client/DefaultHttpClient
dup
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>()V
astore 1
L0:
aload 1
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mPost Lorg/apache/http/client/methods/HttpPost;
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 1
L1:
aload 1
ifnull L18
L3:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 1
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 1
L4:
aload 1
ifnull L20
L6:
aload 1
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 2
L7:
aload 2
ifnull L23
L9:
getstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
ifeq L10
invokestatic com/ta/utdid2/aid/AidRequester/access$000()Ljava/lang/String;
aload 2
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L10:
aload 0
aload 2
putfield com/ta/utdid2/aid/AidRequester$PostRestThread/mRspLine Ljava/lang/String;
L11:
goto L6
L8:
astore 2
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mCallback Lcom/ut/device/AidCallback;
ifnull L24
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mCallback Lcom/ut/device/AidCallback;
sipush 1002
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mOldAid Ljava/lang/String;
invokeinterface com/ut/device/AidCallback/onAidEventChanged(ILjava/lang/String;)V 2
L24:
invokestatic com/ta/utdid2/aid/AidRequester/access$000()Ljava/lang/String;
aload 2
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L23:
aload 1
ifnull L13
L12:
aload 1
invokevirtual java/io/BufferedReader/close()V
getstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
ifeq L13
invokestatic com/ta/utdid2/aid/AidRequester/access$000()Ljava/lang/String;
ldc "close the bufferreader"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L13:
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mCallback Lcom/ut/device/AidCallback;
ifnonnull L25
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/this$0 Lcom/ta/utdid2/aid/AidRequester;
invokestatic com/ta/utdid2/aid/AidRequester/access$100(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;
astore 1
aload 1
monitorenter
L15:
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/this$0 Lcom/ta/utdid2/aid/AidRequester;
invokestatic com/ta/utdid2/aid/AidRequester/access$100(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;
invokevirtual java/lang/Object/notifyAll()V
aload 1
monitorexit
L16:
return
L2:
astore 1
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mCallback Lcom/ut/device/AidCallback;
ifnull L26
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mCallback Lcom/ut/device/AidCallback;
sipush 1002
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mOldAid Ljava/lang/String;
invokeinterface com/ut/device/AidCallback/onAidEventChanged(ILjava/lang/String;)V 2
L26:
invokestatic com/ta/utdid2/aid/AidRequester/access$000()Ljava/lang/String;
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
astore 1
goto L1
L18:
invokestatic com/ta/utdid2/aid/AidRequester/access$000()Ljava/lang/String;
ldc "response is null!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L19:
aload 2
astore 1
goto L4
L5:
astore 1
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mCallback Lcom/ut/device/AidCallback;
ifnull L27
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mCallback Lcom/ut/device/AidCallback;
sipush 1002
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mOldAid Ljava/lang/String;
invokeinterface com/ut/device/AidCallback/onAidEventChanged(ILjava/lang/String;)V 2
L27:
invokestatic com/ta/utdid2/aid/AidRequester/access$000()Ljava/lang/String;
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
astore 1
goto L4
L20:
invokestatic com/ta/utdid2/aid/AidRequester/access$000()Ljava/lang/String;
ldc "BufferredReader is null!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L21:
goto L23
L14:
astore 1
invokestatic com/ta/utdid2/aid/AidRequester/access$000()Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L13
L17:
astore 2
aload 1
monitorexit
aload 2
athrow
L25:
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mRspLine Ljava/lang/String;
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mOldAid Ljava/lang/String;
invokestatic com/ta/utdid2/aid/AidRequester/access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mCallback Lcom/ut/device/AidCallback;
sipush 1001
aload 1
invokeinterface com/ut/device/AidCallback/onAidEventChanged(ILjava/lang/String;)V 2
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/this$0 Lcom/ta/utdid2/aid/AidRequester;
invokestatic com/ta/utdid2/aid/AidRequester/access$300(Lcom/ta/utdid2/aid/AidRequester;)Landroid/content/Context;
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mAppName Ljava/lang/String;
aload 1
aload 0
getfield com/ta/utdid2/aid/AidRequester$PostRestThread/mToken Ljava/lang/String;
invokestatic com/ta/utdid2/aid/AidStorageController/setAidValueToSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 6
.end method
