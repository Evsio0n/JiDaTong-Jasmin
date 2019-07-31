.bytecode 50.0
.class public synchronized com/nd/android/u/contact/ui/base/EventListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.implements android/view/View$OnLongClickListener
.implements android/widget/AdapterView$OnItemClickListener
.implements android/widget/AdapterView$OnItemSelectedListener
.implements android/widget/AdapterView$OnItemLongClickListener

.field private 'clickMethod' Ljava/lang/String;

.field private 'handler' Ljava/lang/Object;

.field private 'itemClickMethod' Ljava/lang/String;

.field private 'itemLongClickMehtod' Ljava/lang/String;

.field private 'itemSelectMethod' Ljava/lang/String;

.field private 'longClickMethod' Ljava/lang/String;

.field private 'nothingSelectedMethod' Ljava/lang/String;

.method public <init>(Ljava/lang/Object;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/base/EventListener/handler Ljava/lang/Object;
return
.limit locals 2
.limit stack 2
.end method

.method private static transient invokeClickMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L2 using L2
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 1
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc android/view/View
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 3
L1:
aload 3
ifnull L4
L3:
aload 3
aload 0
aload 2
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
areturn
L4:
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "no such method:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 4
.limit stack 6
.end method

.method private static transient invokeItemClickMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L2 using L2
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 1
iconst_4
anewarray java/lang/Class
dup
iconst_0
ldc android/widget/AdapterView
aastore
dup
iconst_1
ldc android/view/View
aastore
dup
iconst_2
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
aastore
dup
iconst_3
getstatic java/lang/Long/TYPE Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 3
L1:
aload 3
ifnull L4
L3:
aload 3
aload 0
aload 2
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
areturn
L4:
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "no such method:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 4
.limit stack 6
.end method

.method private static transient invokeItemLongClickMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L2 using L2
aload 0
ifnonnull L0
new java/lang/RuntimeException
dup
ldc "invokeItemLongClickMethod: handler is null :"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 1
iconst_4
anewarray java/lang/Class
dup
iconst_0
ldc android/widget/AdapterView
aastore
dup
iconst_1
ldc android/view/View
aastore
dup
iconst_2
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
aastore
dup
iconst_3
getstatic java/lang/Long/TYPE Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 4
L1:
aload 4
ifnull L8
L3:
aload 4
aload 0
aload 2
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
astore 0
L4:
aload 0
ifnonnull L6
iconst_0
istore 3
L5:
iload 3
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
ireturn
L6:
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic java/lang/Boolean/valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
istore 3
L7:
goto L5
L8:
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "no such method:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 5
.limit stack 6
.end method

.method private static transient invokeItemSelectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L2 using L2
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 1
iconst_4
anewarray java/lang/Class
dup
iconst_0
ldc android/widget/AdapterView
aastore
dup
iconst_1
ldc android/view/View
aastore
dup
iconst_2
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
aastore
dup
iconst_3
getstatic java/lang/Long/TYPE Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 3
L1:
aload 3
ifnull L4
L3:
aload 3
aload 0
aload 2
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
areturn
L4:
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "no such method:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 4
.limit stack 6
.end method

.method private static transient invokeLongClickMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L6 to L2 using L2
aload 0
ifnonnull L0
L7:
iconst_0
ireturn
L0:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 1
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc android/view/View
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 3
L1:
aload 3
ifnull L6
L3:
aload 3
aload 0
aload 2
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
astore 0
L4:
aload 0
ifnull L7
L5:
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic java/lang/Boolean/valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
ireturn
L6:
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "no such method:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 4
.limit stack 6
.end method

.method private static transient invokeNoSelectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L2 using L2
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 1
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc android/widget/AdapterView
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 3
L1:
aload 3
ifnull L4
L3:
aload 3
aload 0
aload 2
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
areturn
L4:
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "no such method:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 4
.limit stack 6
.end method

.method public click(Ljava/lang/String;)Lcom/nd/android/u/contact/ui/base/EventListener;
aload 0
aload 1
putfield com/nd/android/u/contact/ui/base/EventListener/clickMethod Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public itemClick(Ljava/lang/String;)Lcom/nd/android/u/contact/ui/base/EventListener;
aload 0
aload 1
putfield com/nd/android/u/contact/ui/base/EventListener/itemClickMethod Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public itemLongClick(Ljava/lang/String;)Lcom/nd/android/u/contact/ui/base/EventListener;
aload 0
aload 1
putfield com/nd/android/u/contact/ui/base/EventListener/itemLongClickMehtod Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public longClick(Ljava/lang/String;)Lcom/nd/android/u/contact/ui/base/EventListener;
aload 0
aload 1
putfield com/nd/android/u/contact/ui/base/EventListener/longClickMethod Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public noSelect(Ljava/lang/String;)Lcom/nd/android/u/contact/ui/base/EventListener;
aload 0
aload 1
putfield com/nd/android/u/contact/ui/base/EventListener/nothingSelectedMethod Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/handler Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/clickMethod Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic com/nd/android/u/contact/ui/base/EventListener/invokeClickMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 6
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/handler Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/itemClickMethod Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 2
aastore
dup
iconst_2
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_3
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic com/nd/android/u/contact/ui/base/EventListener/invokeItemClickMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 6
.limit stack 7
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)Z"
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/handler Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/itemLongClickMehtod Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 2
aastore
dup
iconst_2
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_3
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic com/nd/android/u/contact/ui/base/EventListener/invokeItemLongClickMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Z
ireturn
.limit locals 6
.limit stack 7
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/handler Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/itemSelectMethod Ljava/lang/String;
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 2
aastore
dup
iconst_2
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_3
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic com/nd/android/u/contact/ui/base/EventListener/invokeItemSelectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 6
.limit stack 7
.end method

.method public onLongClick(Landroid/view/View;)Z
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/handler Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/longClickMethod Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic com/nd/android/u/contact/ui/base/EventListener/invokeLongClickMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
.signature "(Landroid/widget/AdapterView<*>;)V"
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/handler Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/ui/base/EventListener/nothingSelectedMethod Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic com/nd/android/u/contact/ui/base/EventListener/invokeNoSelectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 6
.end method

.method public select(Ljava/lang/String;)Lcom/nd/android/u/contact/ui/base/EventListener;
aload 0
aload 1
putfield com/nd/android/u/contact/ui/base/EventListener/itemSelectMethod Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method
