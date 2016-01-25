.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;
.super Ljava/lang/Object;
.source "SelectSharingChatGroupActivity.java"

# interfaces
.implements Lcom/liquable/nemo/share/Sharable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalMedia"
.end annotation


# instance fields
.field private final mediaInfos:[Lcom/liquable/nemo/android/provider/MediaInfo;

.field private final shareMediaVia:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;


# direct methods
.method public constructor <init>([Lcom/liquable/nemo/android/provider/MediaInfo;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;)V
    .locals 2
    .param p1, "mediaInfos"    # [Lcom/liquable/nemo/android/provider/MediaInfo;
    .param p2, "shareMediaVia"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->EXTERNAL_VIAS:Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "ExternalMedia share only limit to ShareMediaVia.EXTERNAL_VIAS"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->mediaInfos:[Lcom/liquable/nemo/android/provider/MediaInfo;

    .line 75
    iput-object p2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->shareMediaVia:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 76
    return-void
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;)Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->shareMediaVia:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/liquable/nemo/android/provider/MediaInfo;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->mediaInfos:[Lcom/liquable/nemo/android/provider/MediaInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public share(Landroid/content/Context;Ljava/util/List;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/4 v2, 0x0

    .line 84
    const/4 v0, 0x1

    .line 85
    .local v0, "flag":Z
    iget-object v4, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->mediaInfos:[Lcom/liquable/nemo/android/provider/MediaInfo;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 86
    .local v1, "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v1, p2, p1}, Lcom/liquable/nemo/android/provider/MediaInfo;->sendMessages(Ljava/util/List;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    .line 85
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 86
    goto :goto_1

    .line 89
    .end local v1    # "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    :cond_1
    sget-object v2, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$10;->$SwitchMap$com$liquable$nemo$analytics$IAnalyticsService$ShareMediaVia:[I

    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->shareMediaVia:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-virtual {v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 104
    :goto_2
    return v0

    .line 91
    :pswitch_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->mediaInfos:[Lcom/liquable/nemo/android/provider/MediaInfo;

    invoke-interface {v2, v3, p2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareMediaViaShareBoard([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;)V

    goto :goto_2

    .line 94
    :pswitch_1
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->mediaInfos:[Lcom/liquable/nemo/android/provider/MediaInfo;

    invoke-interface {v2, v3, p2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareMediaViaExternalIntent([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;)V

    goto :goto_2

    .line 97
    :pswitch_2
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->mediaInfos:[Lcom/liquable/nemo/android/provider/MediaInfo;

    .line 98
    invoke-interface {v2, v3, p2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareMediaViaDetectedExternalImage([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;)V

    goto :goto_2

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->mediaInfos:[Lcom/liquable/nemo/android/provider/MediaInfo;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->mediaInfos:[Lcom/liquable/nemo/android/provider/MediaInfo;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 115
    .local v1, "media":Lcom/liquable/nemo/android/provider/MediaInfo;
    invoke-virtual {v1}, Lcom/liquable/nemo/android/provider/MediaInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string/jumbo v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "media":Lcom/liquable/nemo/android/provider/MediaInfo;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
