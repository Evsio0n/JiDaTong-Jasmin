.bytecode 50.0
.class public synchronized com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$1
.inner class Holder inner com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder outer com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter

.field private final 'TAG' Ljava/lang/String;

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;>;"

.field private 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
ldc "BirthdayGiftGiverAdapter"
putfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/list Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
ldc "BirthdayGiftGiverAdapter"
putfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/list Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/list Ljava/util/List;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/list Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/list Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/<init>(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter;)V
astore 2
aload 0
getfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/birthday_giftgiver_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
getstatic com/nd/android/u/tasklib/R$id/iv_avatars I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$002(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
pop
aload 2
aload 3
getstatic com/nd/android/u/tasklib/R$id/tv_action I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$102(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
pop
aload 2
aload 3
getstatic com/nd/android/u/tasklib/R$id/tv_givername I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$202(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
pop
aload 2
aload 3
getstatic com/nd/android/u/tasklib/R$id/tv_prompt I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$302(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
pop
aload 2
aload 3
getstatic com/nd/android/u/tasklib/R$id/tv_time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$402(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
pop
aload 2
aload 3
getstatic com/nd/android/u/tasklib/R$id/tv_blessinfo I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$502(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
pop
aload 2
aload 3
getstatic com/nd/android/u/tasklib/R$id/iv_smile I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$602(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
pop
aload 2
aload 3
getstatic com/nd/android/u/tasklib/R$id/tv_gold I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$702(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
pop
aload 2
aload 3
getstatic com/nd/android/u/tasklib/R$id/btn_chat I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$802(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;Landroid/widget/Button;)Landroid/widget/Button;
pop
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder
astore 2
aload 0
getfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/birthday/dataStructure/Myblesslist
astore 4
aload 4
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Myblesslist/getUid()J
aload 4
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Myblesslist/getUid()J
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/toContactGetSysAvatarID(J)I
aload 2
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$000(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;)Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$100(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;)Landroid/widget/TextView;
ldc "\u9001\u7ed9\u4f60\u793c\u7269"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$200(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;)Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Myblesslist/getUsername()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$400(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;)Landroid/widget/TextView;
new java/util/Date
dup
aload 4
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Myblesslist/getAddtime()J
ldc2_w 1000L
lmul
invokespecial java/util/Date/<init>(J)V
iconst_1
invokestatic com/product/android/utils/TimeUtils/getVTLastTime(Ljava/util/Date;Z)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder/access$800(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$Holder;)Landroid/widget/Button;
new com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$1
dup
aload 0
aload 4
invokespecial com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$1/<init>(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter;Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
areturn
.limit locals 5
.limit stack 7
.end method

.method public parserTime(J)Ljava/lang/String;
ldc ""
astore 6
invokestatic java/lang/System/currentTimeMillis()J
lstore 4
lload 4
ldc2_w 1000L
lload 1
lmul
lcmp
ifle L0
lload 4
ldc2_w 1000L
lload 1
lmul
lsub
ldc2_w 1000L
ldiv
lstore 1
L1:
lload 1
ldc2_w 3600L
lcmp
ifge L2
lload 1
ldc2_w 60L
ldiv
l2i
istore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
iconst_1
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u5206\u949f\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
L3:
aload 6
areturn
L0:
ldc2_w 1000L
lload 1
lmul
lload 4
lsub
ldc2_w 1000L
ldiv
lstore 1
goto L1
L2:
ldc2_w 3600L
lload 1
lcmp
ifge L4
lload 1
ldc2_w 86400L
lcmp
ifge L4
lload 1
ldc2_w 60L
ldiv
ldc2_w 60L
ldiv
l2i
istore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
iconst_1
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u5c0f\u65f6\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L4:
lload 1
ldc2_w 86400L
lcmp
ifle L3
lload 1
ldc2_w 60L
ldiv
ldc2_w 60L
ldiv
ldc2_w 24L
ldiv
l2i
istore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
iconst_1
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u5929\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 7
.limit stack 6
.end method
