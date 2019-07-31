.bytecode 50.0
.class public synchronized abstract com/common/android/utils/parser/AbstractObjParser
.super java/lang/Object
.implements com/common/android/utils/parser/ObjParser
.signature "<T::Lcom/common/android/utils/parser/BaseType;>Ljava/lang/Object;Lcom/common/android/utils/parser/ObjParser<TT;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public abstract parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.signature "(Lorg/json/JSONObject;)TT;"
.throws org/json/JSONException
.end method

.method public abstract toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.signature "(TT;)Lorg/json/JSONObject;"
.throws org/json/JSONException
.end method
