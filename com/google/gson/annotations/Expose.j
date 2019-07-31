.bytecode 50.0
.class public abstract interface annotation com/google/gson/annotations/Expose
.super java/lang/Object
.implements java/lang/annotation/Annotation
.annotation visible Ljava/lang/annotation/Retention;
value e Ljava/lang/annotation/RetentionPolicy; = "RUNTIME"
.end annotation
.annotation visible Ljava/lang/annotation/Target;
value [e Ljava/lang/annotation/ElementType; = "FIELD" 
.end annotation

.method public abstract deserialize()Z
.annotation default
Z = 1
.end annotation
.end method

.method public abstract serialize()Z
.annotation default
Z = 1
.end annotation
.end method
