.bytecode 50.0
.class public synchronized abstract com/common/android/utils/parser/AbstractArrayParser
.super java/lang/Object
.implements com/common/android/utils/parser/ArrayParser
.signature "<T::Lcom/common/android/utils/parser/BaseType;>Ljava/lang/Object;Lcom/common/android/utils/parser/ArrayParser<TT;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public abstract parse(Lorg/json/JSONArray;)Ljava/util/List;
.signature "(Lorg/json/JSONArray;)Ljava/util/List<TT;>;"
.throws org/json/JSONException
.end method

.method public abstract toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
.signature "(Ljava/util/List<TT;>;)Lorg/json/JSONArray;"
.throws org/json/JSONException
.end method
