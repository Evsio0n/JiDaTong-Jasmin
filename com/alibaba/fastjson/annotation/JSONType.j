.bytecode 50.0
.class public abstract interface annotation com/alibaba/fastjson/annotation/JSONType
.super java/lang/Object
.implements java/lang/annotation/Annotation
.annotation visible Ljava/lang/annotation/Retention;
value e Ljava/lang/annotation/RetentionPolicy; = "RUNTIME"
.end annotation
.annotation visible Ljava/lang/annotation/Target;
value [e Ljava/lang/annotation/ElementType; = "TYPE" 
.end annotation

.method public abstract alphabetic()Z
.annotation default
Z = 1
.end annotation
.end method

.method public abstract asm()Z
.annotation default
Z = 1
.end annotation
.end method

.method public abstract ignores()[Ljava/lang/String;
.annotation default
; empty array annotation value
.end annotation
.end method

.method public abstract mappingTo()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
.annotation default
c = Ljava/lang/Void;
.end annotation
.end method

.method public abstract orders()[Ljava/lang/String;
.annotation default
; empty array annotation value
.end annotation
.end method

.method public abstract serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
.annotation default
; empty array annotation value
.end annotation
.end method
