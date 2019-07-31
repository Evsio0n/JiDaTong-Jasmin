.bytecode 50.0
.class public synchronized android/net/http/SslError
.super java/lang/Object

.field public static final 'SSL_EXPIRED' I = 1


.field public static final 'SSL_IDMISMATCH' I = 2


.field public static final 'SSL_MAX_ERROR' I = 4


.field public static final 'SSL_NOTYETVALID' I = 0


.field public static final 'SSL_UNTRUSTED' I = 3


.field 'mCertificate' Landroid/net/http/SslCertificate;

.field 'mErrors' I

.method public <init>(ILandroid/net/http/SslCertificate;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
invokevirtual android/net/http/SslError/addError(I)Z
pop
aload 0
aload 2
putfield android/net/http/SslError/mCertificate Landroid/net/http/SslCertificate;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(ILjava/security/cert/X509Certificate;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
invokevirtual android/net/http/SslError/addError(I)Z
pop
aload 0
new android/net/http/SslCertificate
dup
aload 2
invokespecial android/net/http/SslCertificate/<init>(Ljava/security/cert/X509Certificate;)V
putfield android/net/http/SslError/mCertificate Landroid/net/http/SslCertificate;
return
.limit locals 3
.limit stack 4
.end method

.method public addError(I)Z
iload 1
iflt L0
iload 1
iconst_4
if_icmpge L0
iconst_1
istore 2
L1:
iload 2
ifeq L2
aload 0
iconst_1
iload 1
ishl
aload 0
getfield android/net/http/SslError/mErrors I
ior
putfield android/net/http/SslError/mErrors I
L2:
iload 2
ireturn
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 3
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
aload 0
getfield android/net/http/SslError/mCertificate Landroid/net/http/SslCertificate;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPrimaryError()I
aload 0
getfield android/net/http/SslError/mErrors I
ifeq L0
iconst_3
istore 1
L1:
iload 1
ifge L2
L0:
iconst_0
istore 2
L3:
iload 2
ireturn
L2:
iload 1
istore 2
aload 0
getfield android/net/http/SslError/mErrors I
iconst_1
iload 1
ishl
iand
ifne L3
iload 1
iconst_1
isub
istore 1
goto L1
.limit locals 3
.limit stack 3
.end method

.method public hasError(I)Z
iload 1
iflt L0
iload 1
iconst_4
if_icmpge L0
iconst_1
istore 2
L1:
iload 2
istore 3
iload 2
ifeq L2
aload 0
getfield android/net/http/SslError/mErrors I
iconst_1
iload 1
ishl
iand
ifeq L3
iconst_1
istore 3
L2:
iload 3
ireturn
L0:
iconst_0
istore 2
goto L1
L3:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "primary error: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual android/net/http/SslError/getPrimaryError()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " certificate: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual android/net/http/SslError/getCertificate()Landroid/net/http/SslCertificate;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
