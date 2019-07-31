.bytecode 50.0
.class public synchronized com/product/android/commonInterface/backpack/BackPackItem
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field public 'amount' I

.field public 'del_time' J

.field public 'itemid' J

.field public 'itemtype' I

.field public 'server_time' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/product/android/commonInterface/backpack/BackPackItem/itemid J
aload 0
iconst_0
putfield com/product/android/commonInterface/backpack/BackPackItem/amount I
aload 0
iconst_0
putfield com/product/android/commonInterface/backpack/BackPackItem/itemtype I
aload 0
lconst_0
putfield com/product/android/commonInterface/backpack/BackPackItem/del_time J
aload 0
lconst_0
putfield com/product/android/commonInterface/backpack/BackPackItem/server_time J
return
.limit locals 1
.limit stack 3
.end method
