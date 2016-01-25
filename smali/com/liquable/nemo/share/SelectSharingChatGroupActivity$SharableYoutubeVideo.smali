.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;
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
    name = "SharableYoutubeVideo"
.end annotation


# static fields
.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, "(youtu\\.be\\/|youtube\\.com\\/(watch\\?(.*&)?v=|(embed|v)\\/))([^\\?&\"\'>]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;->title:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;->videoId:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;->url:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public static createFromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 166
    const-string/jumbo v6, "android.intent.extra.TEXT"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-object v5

    .line 171
    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 172
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 176
    sget-object v6, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 177
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "videoId":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 186
    const-string/jumbo v5, "android.intent.extra.SUBJECT"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/lang3/StringUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "title":Ljava/lang/String;
    new-instance v5, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;

    invoke-direct {v5, v1, v4, v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public share(Landroid/content/Context;Ljava/util/List;)Z
    .locals 4
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
    .line 204
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "external_intent"

    invoke-interface {v0, p2, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendYoutubeMessage(Ljava/util/List;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;->videoId:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;->url:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendYoutubeMessage(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x1

    return v0
.end method
