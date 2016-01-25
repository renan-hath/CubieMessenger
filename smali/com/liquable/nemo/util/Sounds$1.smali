.class final Lcom/liquable/nemo/util/Sounds$1;
.super Ljava/lang/Object;
.source "Sounds.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/Sounds;->copyRingtones(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x82d0dea8987b0c4L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runInBackground(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getNotificationSound()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 54
    const-string/jumbo v4, "cubie_woodpecker.mp3"

    # invokes: Lcom/liquable/nemo/util/Sounds;->getNotificationFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v4}, Lcom/liquable/nemo/util/Sounds;->access$000(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, "outFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 76
    .end local v1    # "outFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "ringtones"

    .line 63
    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .local v3, "ringToneFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const-string/jumbo v5, "cubie_ringtone_meadowlark.mp3"

    .line 71
    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 70
    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, "ringToneFile":Ljava/lang/String;
    # invokes: Lcom/liquable/nemo/util/Sounds;->copyCubieRingtone(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p1, v2}, Lcom/liquable/nemo/util/Sounds;->access$100(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    .end local v2    # "ringToneFile":Ljava/lang/String;
    .end local v3    # "ringToneFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method
