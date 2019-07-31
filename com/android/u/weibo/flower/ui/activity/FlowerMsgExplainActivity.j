.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity
.super com/product/android/ui/activity/BaseActivity
.inner class inner com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity$1

.field private 'mIvShow1' Landroid/widget/ImageView;

.field private 'mIvShow2' Landroid/widget/ImageView;

.field private 'mTvShow1' Landroid/widget/TextView;

.field private 'mTvShow2' Landroid/widget/TextView;

.field private 'mTvTodo' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/android/u/weibo/R$layout/wbflow_message_explain I
invokevirtual com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/setContentView(I)V
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/getIntent()Landroid/content/Intent;
ldc "FlowerMessageType"
iconst_1
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 2
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_wbflower_todo I
invokevirtual com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mTvTodo Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_wbflower_show1 I
invokevirtual com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mTvShow1 Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_wbflower_show2 I
invokevirtual com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mTvShow2 Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/iv_wbflower_show1 I
invokevirtual com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mIvShow1 Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/iv_wbflower_show2 I
invokevirtual com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mIvShow2 Landroid/widget/ImageView;
aload 0
getstatic com/android/u/weibo/R$id/header_btn_left I
invokevirtual com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/findViewById(I)Landroid/view/View;
new com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity$1
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity$1/<init>(Lcom/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
iload 2
iconst_1
if_icmpne L0
getstatic com/android/u/weibo/R$string/wbflower_request_explain_title I
istore 2
aload 0
getfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mTvTodo Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/wbflower_request_todo I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mTvShow1 Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/wbflower_request_show1 I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mTvShow2 Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/wbflower_request_show2 I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mIvShow1 Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/wbflower_explain1 I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mIvShow2 Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/wbflower_explain2 I
invokevirtual android/widget/ImageView/setImageResource(I)V
L1:
aload 0
getstatic com/android/u/weibo/R$id/header_text_title I
invokevirtual com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
iload 2
invokevirtual android/widget/TextView/setText(I)V
return
L0:
getstatic com/android/u/weibo/R$string/wbflower_thank_explain_title I
istore 2
aload 0
getfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mTvTodo Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/wbflower_thank_todo I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mTvShow1 Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mTvShow2 Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/wbflower_thank_show2 I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mIvShow1 Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/wbflower_explain3 I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity/mIvShow2 Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L1
.limit locals 3
.limit stack 4
.end method
