.class public interface abstract Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;
.super Ljava/lang/Object;
.source "MixpanelAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "People"
.end annotation


# virtual methods
.method public abstract append(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract getDistinctId()Ljava/lang/String;
.end method

.method public abstract identify(Ljava/lang/String;)V
.end method

.method public abstract increment(Ljava/lang/String;D)V
.end method

.method public abstract increment(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract set(Lorg/json/JSONObject;)V
.end method

.method public abstract showNotificationIfAvailable(Landroid/app/Activity;)V
.end method

.method public abstract showSurveyIfAvailable(Landroid/app/Activity;)V
.end method

.method public abstract withIdentity(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;
.end method
