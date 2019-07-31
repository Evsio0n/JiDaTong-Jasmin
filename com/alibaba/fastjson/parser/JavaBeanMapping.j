.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/JavaBeanMapping
.super com/alibaba/fastjson/parser/ParserConfig
.annotation visible Ljava/lang/Deprecated;
.end annotation

.field private static final 'instance' Lcom/alibaba/fastjson/parser/JavaBeanMapping;

.method static <clinit>()V
new com/alibaba/fastjson/parser/JavaBeanMapping
dup
invokespecial com/alibaba/fastjson/parser/JavaBeanMapping/<init>()V
putstatic com/alibaba/fastjson/parser/JavaBeanMapping/instance Lcom/alibaba/fastjson/parser/JavaBeanMapping;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/alibaba/fastjson/parser/ParserConfig/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/parser/JavaBeanMapping;
getstatic com/alibaba/fastjson/parser/JavaBeanMapping/instance Lcom/alibaba/fastjson/parser/JavaBeanMapping;
areturn
.limit locals 0
.limit stack 1
.end method
