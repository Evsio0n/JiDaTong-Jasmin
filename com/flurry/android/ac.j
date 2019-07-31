.bytecode 50.0
.class final synchronized com/flurry/android/ac
.super android/widget/RelativeLayout

.field private final 'a' Landroid/text/SpannedString;

.field private final 'b' Landroid/text/SpannedString;

.method public <init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V
aload 0
aload 2
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
new android/text/SpannedString
dup
ldc "<html><div='style:font-size:7px'>&lt; Previous</div></html>"
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokespecial android/text/SpannedString/<init>(Ljava/lang/CharSequence;)V
putfield com/flurry/android/ac/a Landroid/text/SpannedString;
aload 0
new android/text/SpannedString
dup
ldc "<html><div='style:font-size:7px;color:#ffA500'>&lt; Previous</div></html>"
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokespecial android/text/SpannedString/<init>(Ljava/lang/CharSequence;)V
putfield com/flurry/android/ac/b Landroid/text/SpannedString;
aload 0
ldc_w -16777216
invokevirtual com/flurry/android/ac/setBackgroundColor(I)V
new android/widget/TextView
dup
aload 2
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 2
aload 2
iconst_m1
invokestatic android/content/res/ColorStateList/valueOf(I)Landroid/content/res/ColorStateList;
invokevirtual android/widget/TextView/setTextColor(Landroid/content/res/ColorStateList;)V
aload 2
sipush 10001
invokevirtual android/widget/TextView/setId(I)V
aload 2
aload 0
getfield com/flurry/android/ac/a Landroid/text/SpannedString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
iconst_5
iconst_2
iconst_5
iconst_2
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 2
iconst_1
invokevirtual android/widget/TextView/setFocusable(Z)V
aload 2
new com/flurry/android/ad
dup
aload 0
aload 2
invokespecial com/flurry/android/ad/<init>(Lcom/flurry/android/ac;Landroid/widget/TextView;)V
invokevirtual android/widget/TextView/setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
aload 2
aload 1
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
iconst_1
invokevirtual android/widget/TextView/setEnabled(Z)V
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 1
aload 1
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/RelativeLayout$LayoutParams/setMargins(IIII)V
aload 0
aload 1
invokevirtual com/flurry/android/ac/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 1
aload 1
iconst_2
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/RelativeLayout$LayoutParams/setMargins(IIII)V
aload 1
iconst_4
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 0
aload 2
aload 1
invokevirtual com/flurry/android/ac/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 3
.limit stack 5
.end method

.method static synthetic a(Lcom/flurry/android/ac;)Landroid/text/SpannedString;
aload 0
getfield com/flurry/android/ac/b Landroid/text/SpannedString;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic b(Lcom/flurry/android/ac;)Landroid/text/SpannedString;
aload 0
getfield com/flurry/android/ac/a Landroid/text/SpannedString;
areturn
.limit locals 1
.limit stack 1
.end method
