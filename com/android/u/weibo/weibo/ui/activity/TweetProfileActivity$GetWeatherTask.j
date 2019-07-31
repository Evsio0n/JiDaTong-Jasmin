.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/u/weibo/weibo/utils/Weather;>;"
.inner class private GetWeatherTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/utils/Weather;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
ldc "101230101"
invokestatic com/android/u/weibo/weibo/utils/Weather/syncGetWeather(Landroid/content/Context;Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/utils/Weather;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/android/u/weibo/weibo/utils/Weather;)V
aload 1
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3400(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/ImageView;
aload 1
invokevirtual com/android/u/weibo/weibo/utils/Weather/getCoverResourceId()I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/llWeather Landroid/widget/LinearLayout;
getstatic com/android/u/weibo/R$drawable/weather_txt_bg I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtWeather Landroid/widget/TextView;
aload 1
invokevirtual com/android/u/weibo/weibo/utils/Weather/getForecastWeather()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/imgWeatherIcon Landroid/widget/ImageView;
aload 1
invokevirtual com/android/u/weibo/weibo/utils/Weather/getWeatherResourceId()I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtWeatherTemperature Landroid/widget/TextView;
aload 1
invokevirtual com/android/u/weibo/weibo/utils/Weather/getForecastTemp()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/android/u/weibo/weibo/utils/Weather
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetWeatherTask/onPostExecute(Lcom/android/u/weibo/weibo/utils/Weather;)V
return
.limit locals 2
.limit stack 2
.end method
