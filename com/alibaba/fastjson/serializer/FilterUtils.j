.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/FilterUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyFiltersDirect()Ljava/util/List;
astore 0
aload 0
ifnull L0
iconst_1
istore 5
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
iload 5
istore 4
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/PropertyFilter
aload 1
aload 2
iload 3
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
invokeinterface com/alibaba/fastjson/serializer/PropertyFilter/apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z 3
ifne L1
iconst_0
istore 4
L2:
iload 4
ireturn
L0:
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Z
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyFiltersDirect()Ljava/util/List;
astore 0
aload 0
ifnull L0
iconst_1
istore 5
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
iload 5
istore 4
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/PropertyFilter
aload 1
aload 2
iload 3
invokestatic java/lang/Character/valueOf(C)Ljava/lang/Character;
invokeinterface com/alibaba/fastjson/serializer/PropertyFilter/apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z 3
ifne L1
iconst_0
istore 4
L2:
iload 4
ireturn
L0:
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Z
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyFiltersDirect()Ljava/util/List;
astore 0
aload 0
ifnull L0
iconst_1
istore 6
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
iload 6
istore 5
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/PropertyFilter
aload 1
aload 2
dload 3
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
invokeinterface com/alibaba/fastjson/serializer/PropertyFilter/apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z 3
ifne L1
iconst_0
istore 5
L2:
iload 5
ireturn
L0:
iconst_1
ireturn
.limit locals 7
.limit stack 5
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Z
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyFiltersDirect()Ljava/util/List;
astore 0
aload 0
ifnull L0
iconst_1
istore 5
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
iload 5
istore 4
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/PropertyFilter
aload 1
aload 2
fload 3
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
invokeinterface com/alibaba/fastjson/serializer/PropertyFilter/apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z 3
ifne L1
iconst_0
istore 4
L2:
iload 4
ireturn
L0:
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Z
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyFiltersDirect()Ljava/util/List;
astore 0
aload 0
ifnull L0
iconst_1
istore 5
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
iload 5
istore 4
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/PropertyFilter
aload 1
aload 2
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface com/alibaba/fastjson/serializer/PropertyFilter/apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z 3
ifne L1
iconst_0
istore 4
L2:
iload 4
ireturn
L0:
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Z
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyFiltersDirect()Ljava/util/List;
astore 0
aload 0
ifnull L0
iconst_1
istore 6
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
iload 6
istore 5
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/PropertyFilter
aload 1
aload 2
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface com/alibaba/fastjson/serializer/PropertyFilter/apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z 3
ifne L1
iconst_0
istore 5
L2:
iload 5
ireturn
L0:
iconst_1
ireturn
.limit locals 7
.limit stack 5
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyFiltersDirect()Ljava/util/List;
astore 0
aload 0
ifnonnull L0
L1:
iconst_1
ireturn
L0:
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L2:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/PropertyFilter
aload 1
aload 2
aload 3
invokeinterface com/alibaba/fastjson/serializer/PropertyFilter/apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z 3
ifne L2
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Z
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyFiltersDirect()Ljava/util/List;
astore 0
aload 0
ifnull L0
iconst_1
istore 5
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
iload 5
istore 4
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/PropertyFilter
aload 1
aload 2
iload 3
invokestatic java/lang/Short/valueOf(S)Ljava/lang/Short;
invokeinterface com/alibaba/fastjson/serializer/PropertyFilter/apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z 3
ifne L1
iconst_0
istore 4
L2:
iload 4
ireturn
L0:
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public static applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyPreFiltersDirect()Ljava/util/List;
astore 3
aload 3
ifnonnull L0
L1:
iconst_1
ireturn
L0:
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/PropertyPreFilter
aload 0
aload 1
aload 2
invokeinterface com/alibaba/fastjson/serializer/PropertyPreFilter/apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z 3
ifne L2
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static getExtratype(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getExtraTypeProvidersDirect()Ljava/util/List;
astore 3
aload 3
ifnonnull L0
aconst_null
astore 0
L1:
aload 0
areturn
L0:
aconst_null
astore 0
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/parser/deserializer/ExtraTypeProvider
aload 1
aload 2
invokeinterface com/alibaba/fastjson/parser/deserializer/ExtraTypeProvider/getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type; 2
astore 0
goto L2
.limit locals 4
.limit stack 3
.end method

.method public static processExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getExtraProcessorsDirect()Ljava/util/List;
astore 0
aload 0
ifnonnull L0
L1:
return
L0:
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L2:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/parser/deserializer/ExtraProcessor
aload 1
aload 2
aload 3
invokeinterface com/alibaba/fastjson/parser/deserializer/ExtraProcessor/processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V 3
goto L2
.limit locals 4
.limit stack 4
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getNameFiltersDirect()Ljava/util/List;
astore 4
aload 2
astore 0
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 2
astore 0
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/NameFilter
aload 1
aload 2
iload 3
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
invokeinterface com/alibaba/fastjson/serializer/NameFilter/process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; 3
astore 2
goto L1
L0:
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getNameFiltersDirect()Ljava/util/List;
astore 4
aload 2
astore 0
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 2
astore 0
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/NameFilter
aload 1
aload 2
iload 3
invokestatic java/lang/Character/valueOf(C)Ljava/lang/Character;
invokeinterface com/alibaba/fastjson/serializer/NameFilter/process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; 3
astore 2
goto L1
L0:
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getNameFiltersDirect()Ljava/util/List;
astore 5
aload 2
astore 0
aload 5
ifnull L0
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L1:
aload 2
astore 0
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/NameFilter
aload 1
aload 2
dload 3
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
invokeinterface com/alibaba/fastjson/serializer/NameFilter/process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; 3
astore 2
goto L1
L0:
aload 0
areturn
.limit locals 6
.limit stack 5
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getNameFiltersDirect()Ljava/util/List;
astore 4
aload 2
astore 0
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 2
astore 0
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/NameFilter
aload 1
aload 2
fload 3
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
invokeinterface com/alibaba/fastjson/serializer/NameFilter/process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; 3
astore 2
goto L1
L0:
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getNameFiltersDirect()Ljava/util/List;
astore 4
aload 2
astore 0
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 2
astore 0
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/NameFilter
aload 1
aload 2
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface com/alibaba/fastjson/serializer/NameFilter/process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; 3
astore 2
goto L1
L0:
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getNameFiltersDirect()Ljava/util/List;
astore 5
aload 2
astore 0
aload 5
ifnull L0
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L1:
aload 2
astore 0
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/NameFilter
aload 1
aload 2
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface com/alibaba/fastjson/serializer/NameFilter/process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; 3
astore 2
goto L1
L0:
aload 0
areturn
.limit locals 6
.limit stack 5
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getNameFiltersDirect()Ljava/util/List;
astore 4
aload 2
astore 0
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 2
astore 0
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/NameFilter
aload 1
aload 2
aload 3
invokeinterface com/alibaba/fastjson/serializer/NameFilter/process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; 3
astore 2
goto L1
L0:
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getNameFiltersDirect()Ljava/util/List;
astore 4
aload 2
astore 0
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 2
astore 0
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/NameFilter
aload 1
aload 2
iload 3
invokestatic java/lang/Short/valueOf(S)Ljava/lang/Short;
invokeinterface com/alibaba/fastjson/serializer/NameFilter/process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; 3
astore 2
goto L1
L0:
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getNameFiltersDirect()Ljava/util/List;
astore 4
aload 2
astore 0
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 2
astore 0
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/NameFilter
aload 1
aload 2
iload 3
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface com/alibaba/fastjson/serializer/NameFilter/process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; 3
astore 2
goto L1
L0:
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public static processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getValueFiltersDirect()Ljava/util/List;
astore 4
aload 3
astore 0
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 3
astore 0
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/ValueFilter
aload 1
aload 2
aload 3
invokeinterface com/alibaba/fastjson/serializer/ValueFilter/process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; 3
astore 3
goto L1
L0:
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public static writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getAfterFiltersDirect()Ljava/util/List;
astore 4
iload 2
istore 3
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
iload 2
istore 3
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/AfterFilter
aload 0
aload 1
iload 2
invokevirtual com/alibaba/fastjson/serializer/AfterFilter/writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
istore 2
goto L1
L0:
iload 3
ireturn
.limit locals 5
.limit stack 4
.end method

.method public static writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getBeforeFiltersDirect()Ljava/util/List;
astore 4
iload 2
istore 3
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
iload 2
istore 3
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/serializer/BeforeFilter
aload 0
aload 1
iload 2
invokevirtual com/alibaba/fastjson/serializer/BeforeFilter/writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
istore 2
goto L1
L0:
iload 3
ireturn
.limit locals 5
.limit stack 4
.end method
