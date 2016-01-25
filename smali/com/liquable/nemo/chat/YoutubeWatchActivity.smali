.class public Lcom/liquable/nemo/chat/YoutubeWatchActivity;
.super Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;
.source "YoutubeWatchActivity.java"


# static fields
.field private static final YOUTUBE_MESSAGE:Ljava/lang/String; = "YOUTUBE_MESSAGE"


# instance fields
.field private flowers:Landroid/view/View;

.field private titleTextView:Landroid/widget/TextView;

.field private youtubeMessage:Lcom/liquable/nemo/message/model/YoutubeMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/YoutubeMessage;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/liquable/nemo/message/model/YoutubeMessage;

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/YoutubeWatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "YOUTUBE_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 20
    return-object v0
.end method

.method private static getYoutubeMessage(Landroid/content/Intent;)Lcom/liquable/nemo/message/model/YoutubeMessage;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    const-string/jumbo v0, "YOUTUBE_MESSAGE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/YoutubeMessage;

    return-object v0
.end method

.method private static hasYoutubeMessage(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    const-string/jumbo v0, "YOUTUBE_MESSAGE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->getYoutubeMessage(Landroid/content/Intent;)Lcom/liquable/nemo/message/model/YoutubeMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->youtubeMessage:Lcom/liquable/nemo/message/model/YoutubeMessage;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getVideoId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->hasYoutubeMessage(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->finish()V

    .line 58
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->getYoutubeMessage(Landroid/content/Intent;)Lcom/liquable/nemo/message/model/YoutubeMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->youtubeMessage:Lcom/liquable/nemo/message/model/YoutubeMessage;

    .line 51
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d054a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 52
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->setContentView(I)V

    .line 53
    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->titleTextView:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->youtubeMessage:Lcom/liquable/nemo/message/model/YoutubeMessage;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->flowers:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->initPlayerFragment()V

    goto :goto_0
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 63
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0f0014

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 64
    const/4 v1, 0x1

    return v1
.end method

.method protected showHideOtherViews(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubeWatchActivity;->flowers:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method
