.bytecode 50.0
.class public synchronized com/common/android/utils/httpRequest/ISetHeadAgentImp
.super java/lang/Object
.implements com/common/android/utils/httpRequest/ISetHeadAgent

.field private 'uid' J

.method public <init>(J)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/common/android/utils/httpRequest/ISetHeadAgentImp/uid J
aload 0
lload 1
putfield com/common/android/utils/httpRequest/ISetHeadAgentImp/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
aload 0
getfield com/common/android/utils/httpRequest/ISetHeadAgentImp/uid J
lconst_0
lcmp
ifle L0
aload 1
ifnull L0
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "PHPUID"
aload 0
getfield com/common/android/utils/httpRequest/ISetHeadAgentImp/uid J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
L0:
return
.limit locals 2
.limit stack 6
.end method
