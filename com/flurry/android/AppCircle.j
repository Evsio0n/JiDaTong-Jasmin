.bytecode 50.0
.class public synchronized com/flurry/android/AppCircle
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public acceptOffer(Landroid/content/Context;J)V
aload 1
lload 2
invokestatic com/flurry/android/FlurryAgent/a(Landroid/content/Context;J)V
return
.limit locals 4
.limit stack 3
.end method

.method public addUserCookie(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokestatic com/flurry/android/FlurryAgent/addUserCookie(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public clearUserCookies()V
invokestatic com/flurry/android/FlurryAgent/clearUserCookies()V
return
.limit locals 1
.limit stack 0
.end method

.method public getAllOffers()Ljava/util/List;
ldc ""
invokestatic com/flurry/android/FlurryAgent/b(Ljava/lang/String;)Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAllOffers(Ljava/lang/String;)Ljava/util/List;
aload 1
invokestatic com/flurry/android/FlurryAgent/b(Ljava/lang/String;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getHook(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
aload 1
aload 2
iload 3
invokestatic com/flurry/android/FlurryAgent/a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getOffer()Lcom/flurry/android/Offer;
aload 0
ldc ""
invokevirtual com/flurry/android/AppCircle/getOffer(Ljava/lang/String;)Lcom/flurry/android/Offer;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getOffer(Ljava/lang/String;)Lcom/flurry/android/Offer;
aload 1
invokestatic com/flurry/android/FlurryAgent/a(Ljava/lang/String;)Lcom/flurry/android/Offer;
areturn
.limit locals 2
.limit stack 1
.end method

.method public hasAds()Z
invokestatic com/flurry/android/FlurryAgent/d()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isLaunchCanvasOnBannerClicked()Z
invokestatic com/flurry/android/FlurryAgent/a()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isLaunchCatalogOnBannerClicked()Z
invokestatic com/flurry/android/FlurryAgent/a()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public launchCanvasOnBannerClicked(Z)V
iload 1
invokestatic com/flurry/android/FlurryAgent/a(Z)V
return
.limit locals 2
.limit stack 1
.end method

.method public launchCatalogOnBannerClicked(Z)V
iload 1
invokestatic com/flurry/android/FlurryAgent/a(Z)V
return
.limit locals 2
.limit stack 1
.end method

.method public openCatalog(Landroid/content/Context;)V
aload 0
aload 1
ldc ""
invokevirtual com/flurry/android/AppCircle/openCatalog(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public openCatalog(Landroid/content/Context;Ljava/lang/String;)V
aload 1
aload 2
invokestatic com/flurry/android/FlurryAgent/a(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public removeOffers(Ljava/util/List;)V
aload 1
invokestatic com/flurry/android/FlurryAgent/a(Ljava/util/List;)V
return
.limit locals 2
.limit stack 1
.end method

.method public setAppCircleCallback(Lcom/flurry/android/AppCircleCallback;)V
aload 1
invokestatic com/flurry/android/FlurryAgent/a(Lcom/flurry/android/AppCircleCallback;)V
return
.limit locals 2
.limit stack 1
.end method

.method public setDefaultNoAdsMessage(Ljava/lang/String;)V
aload 1
invokestatic com/flurry/android/FlurryAgent/setDefaultNoAdsMessage(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 1
.end method
