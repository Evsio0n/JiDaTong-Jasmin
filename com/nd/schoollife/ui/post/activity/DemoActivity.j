.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/activity/DemoActivity
.super com/nd/schoollife/ui/common/activity/BaseActivity

.field public static final 'TAG' Ljava/lang/String;

.method static <clinit>()V
ldc com/nd/schoollife/ui/post/activity/DemoActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/post/activity/DemoActivity/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private initView()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
new com/nd/schoollife/ui/post/view/HotPostListItemView
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/DemoActivity/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/HotPostListItemView/<init>(Landroid/content/Context;)V
invokevirtual com/nd/schoollife/ui/post/activity/DemoActivity/setContentView(Landroid/view/View;)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/DemoActivity/initView()V
return
.limit locals 2
.limit stack 4
.end method
