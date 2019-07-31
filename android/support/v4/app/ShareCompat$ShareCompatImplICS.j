.bytecode 50.0
.class synchronized android/support/v4/app/ShareCompat$ShareCompatImplICS
.super android/support/v4/app/ShareCompat$ShareCompatImplBase
.inner class static ShareCompatImplICS inner android/support/v4/app/ShareCompat$ShareCompatImplICS outer android/support/v4/app/ShareCompat

.method <init>()V
aload 0
invokespecial android/support/v4/app/ShareCompat$ShareCompatImplBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V
aload 1
aload 2
invokevirtual android/support/v4/app/ShareCompat$IntentBuilder/getActivity()Landroid/app/Activity;
aload 2
invokevirtual android/support/v4/app/ShareCompat$IntentBuilder/getIntent()Landroid/content/Intent;
invokestatic android/support/v4/app/ShareCompatICS/configureMenuItem(Landroid/view/MenuItem;Landroid/app/Activity;Landroid/content/Intent;)V
aload 0
aload 1
invokevirtual android/support/v4/app/ShareCompat$ShareCompatImplICS/shouldAddChooserIntent(Landroid/view/MenuItem;)Z
ifeq L0
aload 1
aload 2
invokevirtual android/support/v4/app/ShareCompat$IntentBuilder/createChooserIntent()Landroid/content/Intent;
invokeinterface android/view/MenuItem/setIntent(Landroid/content/Intent;)Landroid/view/MenuItem; 1
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method shouldAddChooserIntent(Landroid/view/MenuItem;)Z
aload 1
invokeinterface android/view/MenuItem/hasSubMenu()Z 0
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method
