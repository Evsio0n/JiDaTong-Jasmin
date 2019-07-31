.bytecode 50.0
.class public synchronized com/nd/rj/common/suggest/view/SuggestListAdapter
.super android/widget/BaseAdapter
.inner class ViewHolder inner com/nd/rj/common/suggest/view/SuggestListAdapter$ViewHolder outer com/nd/rj/common/suggest/view/SuggestListAdapter

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mSuggestInfos' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/rj/common/suggest/entity/SuggestInfo;>;"

.method public <init>(Landroid/content/Context;Ljava/util/AbstractList;)V
.signature "(Landroid/content/Context;Ljava/util/AbstractList<Lcom/nd/rj/common/suggest/entity/SuggestInfo;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/rj/common/suggest/view/SuggestListAdapter/mInflater Landroid/view/LayoutInflater;
aload 0
aload 2
checkcast java/util/ArrayList
putfield com/nd/rj/common/suggest/view/SuggestListAdapter/mSuggestInfos Ljava/util/ArrayList;
return
.limit locals 3
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/rj/common/suggest/view/SuggestListAdapter/mSuggestInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 1
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
ifnonnull L0
aload 0
getfield com/nd/rj/common/suggest/view/SuggestListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/rj/common/R$layout/nd_suggest_item I
aload 3
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 2
new com/nd/rj/common/suggest/view/SuggestListAdapter$ViewHolder
dup
aload 0
invokespecial com/nd/rj/common/suggest/view/SuggestListAdapter$ViewHolder/<init>(Lcom/nd/rj/common/suggest/view/SuggestListAdapter;)V
astore 3
aload 3
aload 2
getstatic com/nd/rj/common/R$id/suggestText I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/suggest/view/SuggestListAdapter$ViewHolder/tvSuggest Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/rj/common/R$id/respondText I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/suggest/view/SuggestListAdapter$ViewHolder/tvRespond Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/rj/common/suggest/view/SuggestListAdapter/mSuggestInfos Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/rj/common/suggest/entity/SuggestInfo
astore 5
aload 5
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getSuggestDate()Ljava/lang/String;
astore 4
aload 4
invokevirtual java/lang/String/length()I
ifle L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getSuggest()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L3:
aload 3
getfield com/nd/rj/common/suggest/view/SuggestListAdapter$ViewHolder/tvSuggest Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 5
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getRespondDate()Ljava/lang/String;
astore 4
aload 4
invokevirtual java/lang/String/length()I
ifle L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getRespond()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L5:
aload 3
getfield com/nd/rj/common/suggest/view/SuggestListAdapter$ViewHolder/tvRespond Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/rj/common/suggest/view/SuggestListAdapter$ViewHolder
astore 3
goto L1
L2:
aload 5
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getSuggest()Ljava/lang/String;
astore 4
goto L3
L4:
aload 5
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getRespond()Ljava/lang/String;
astore 4
goto L5
.limit locals 6
.limit stack 4
.end method
