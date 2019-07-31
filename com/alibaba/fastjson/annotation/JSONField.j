.bytecode 50.0
.class public abstract interface annotation com/alibaba/fastjson/annotation/JSONField
.super java/lang/Object
.implements java/lang/annotation/Annotation
.annotation visible Ljava/lang/annotation/Retention;
value e Ljava/lang/annotation/RetentionPolicy; = "RUNTIME"
.end annotation
.annotation visible Ljava/lang/annotation/Target;
value [e Ljava/lang/annotation/ElementType; = "METHOD" "FIELD" "PARAMETER" 
.end annotation

.method public abstract deserialize()Z
.annotation default
Z = 1
.end annotation
.end method

.method public abstract format()Ljava/lang/String;
.annotation default
s = ""
.end annotation
.end method

.method public abstract name()Ljava/lang/String;
.annotation default
s = ""
.end annotation
.end method

.method public abstract parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;
.annotation default
; empty array annotation value
.end annotation
.end method

.method public abstract serialize()Z
.annotation default
Z = 1
.end annotation
.end method

.method public abstract serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
.annotation default
; empty array annotation value
.end annotation
.end method
