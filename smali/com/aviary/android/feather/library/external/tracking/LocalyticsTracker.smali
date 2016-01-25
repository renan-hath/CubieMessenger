.class public Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;
.super Lcom/aviary/android/feather/library/tracking/AbstractTracker;
.source "LocalyticsTracker.java"


# static fields
.field private static final LOG_ENABLED:Z


# instance fields
.field private final localyticsKey:Ljava/lang/String;

.field private localyticsSession:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;

.field private final mCustomDimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    sput-boolean v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->LOG_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "apiKey"    # Ljava/lang/String;
    .param p4, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aviary/android/feather/library/tracking/AbstractTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "ff159f6cc04d5010ac6461e-fc511f5e-b6ff-11e0-049a-007f58cb3154"

    iput-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->localyticsKey:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mDefaultAttributes:Ljava/util/HashMap;

    .line 30
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mDefaultAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "apiKey"

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mDefaultAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "appId"

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mCallingAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mDefaultAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "sdkVersion"

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;

    const-string/jumbo v1, "ff159f6cc04d5010ac6461e-fc511f5e-b6ff-11e0-049a-007f58cb3154"

    invoke-direct {v0, p1, v1, p4}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->localyticsSession:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mCustomDimensions:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mCustomDimensions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 3

    .prologue
    .line 82
    sget-boolean v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v0, "Localytics-Tracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LocalyticsSession.close, appname: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->localyticsSession:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->close(Ljava/util/List;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public open()V
    .locals 3

    .prologue
    .line 68
    sget-boolean v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 69
    const-string/jumbo v0, "Localytics-Tracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LocalyticsSession.open, appname: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->localyticsSession:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->open(Ljava/util/List;)V

    .line 72
    return-void
.end method

.method public recordTag(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 3
    .param p1, "theTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 54
    iget-object p2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mDefaultAttributes:Ljava/util/HashMap;

    .line 59
    :goto_0
    sget-boolean v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "Localytics-Tracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LocalyticsSession.recordRag, tag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", attr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->localyticsSession:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 64
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mDefaultAttributes:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setABGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->setABGroup(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mDefaultAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "ab-group"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public setExternalAppName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->setExternalAppName(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mDefaultAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public upload()V
    .locals 3

    .prologue
    .line 75
    sget-boolean v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, "Localytics-Tracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LocalyticsSession.upload, appname: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;->localyticsSession:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->upload()V

    .line 79
    return-void
.end method
