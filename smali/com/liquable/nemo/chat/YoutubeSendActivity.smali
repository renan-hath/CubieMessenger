.class public Lcom/liquable/nemo/chat/YoutubeSendActivity;
.super Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;
.source "YoutubeSendActivity.java"


# static fields
.field private static final YOUTUBE_VIDEO:Ljava/lang/String; = "YOUTUBE_VIDEO"


# instance fields
.field private flowers:Landroid/view/View;

.field private shareButtons:Landroid/view/View;

.field private titleTextView:Landroid/widget/TextView;

.field private youtubeVideo:Lcom/liquable/nemo/youtube/YoutubeVideo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/YoutubeSendActivity;)Lcom/liquable/nemo/youtube/YoutubeVideo;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubeSendActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->youtubeVideo:Lcom/liquable/nemo/youtube/YoutubeVideo;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Lcom/liquable/nemo/youtube/YoutubeVideo;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "video"    # Lcom/liquable/nemo/youtube/YoutubeVideo;

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/liquable/nemo/youtube/YoutubeVideo;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/liquable/nemo/chat/YoutubeSendActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    return-object v0
.end method


# virtual methods
.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->youtubeVideo:Lcom/liquable/nemo/youtube/YoutubeVideo;

    invoke-virtual {v0}, Lcom/liquable/nemo/youtube/YoutubeVideo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/youtube/YoutubeVideo;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/youtube/YoutubeVideo;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->youtubeVideo:Lcom/liquable/nemo/youtube/YoutubeVideo;

    .line 38
    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->youtubeVideo:Lcom/liquable/nemo/youtube/YoutubeVideo;

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->finish()V

    .line 60
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d054a

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 44
    const v1, 0x7f03004a

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->setContentView(I)V

    .line 45
    const v1, 0x7f08012f

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->titleTextView:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->youtubeVideo:Lcom/liquable/nemo/youtube/YoutubeVideo;

    invoke-virtual {v2}, Lcom/liquable/nemo/youtube/YoutubeVideo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v1, 0x7f08012d

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->flowers:Landroid/view/View;

    .line 48
    const v1, 0x7f08012b

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->shareButtons:Landroid/view/View;

    .line 50
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->initPlayerFragment()V

    .line 52
    const v1, 0x7f08012c

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    .local v0, "sendBtn":Landroid/widget/Button;
    new-instance v1, Lcom/liquable/nemo/chat/YoutubeSendActivity$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/YoutubeSendActivity$1;-><init>(Lcom/liquable/nemo/chat/YoutubeSendActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 65
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0f0014

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 66
    const/4 v1, 0x1

    return v1
.end method

.method protected showHideOtherViews(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->flowers:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity;->shareButtons:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-void
.end method
