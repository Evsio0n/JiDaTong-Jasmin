.bytecode 50.0
.class public synchronized com/nd/teamfile/exception/TeamFileException
.super java/lang/Exception

.field private static final 'serialVersionUID' J = 5615013459214088971L


.field private 'mCode' I

.method public <init>(ILjava/lang/String;)V
aload 0
aload 2
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
aload 0
iload 1
putfield com/nd/teamfile/exception/TeamFileException/mCode I
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
aload 1
aload 2
invokespecial java/lang/Exception/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Ljava/lang/Throwable;)V
aload 0
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getCode()I
aload 0
getfield com/nd/teamfile/exception/TeamFileException/mCode I
ireturn
.limit locals 1
.limit stack 1
.end method
