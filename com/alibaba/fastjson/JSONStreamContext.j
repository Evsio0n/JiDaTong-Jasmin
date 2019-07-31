.bytecode 50.0
.class synchronized com/alibaba/fastjson/JSONStreamContext
.super java/lang/Object

.field static final 'ArrayValue' I = 1005


.field static final 'PropertyKey' I = 1002


.field static final 'PropertyValue' I = 1003


.field static final 'StartArray' I = 1004


.field static final 'StartObject' I = 1001


.field private final 'parent' Lcom/alibaba/fastjson/JSONStreamContext;

.field private 'state' I

.method public <init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/JSONStreamContext/parent Lcom/alibaba/fastjson/JSONStreamContext;
aload 0
iload 2
putfield com/alibaba/fastjson/JSONStreamContext/state I
return
.limit locals 3
.limit stack 2
.end method

.method public getParent()Lcom/alibaba/fastjson/JSONStreamContext;
aload 0
getfield com/alibaba/fastjson/JSONStreamContext/parent Lcom/alibaba/fastjson/JSONStreamContext;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getState()I
aload 0
getfield com/alibaba/fastjson/JSONStreamContext/state I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setState(I)V
aload 0
iload 1
putfield com/alibaba/fastjson/JSONStreamContext/state I
return
.limit locals 2
.limit stack 2
.end method
