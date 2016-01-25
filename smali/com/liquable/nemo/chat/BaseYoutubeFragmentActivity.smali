.class public abstract Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "BaseYoutubeFragmentActivity.java"


# instance fields
.field private actionBarMenu:Lcom/actionbarsherlock/view/Menu;

.field private helper:Lcom/liquable/nemo/BaseActivityHelper;

.field private isFullscreen:Z

.field private final onFullscreenListener:Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;

.field private final onInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

.field private youtubeFragment:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

.field private youtubePlayerFragment:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 37
    new-instance v0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$1;-><init>(Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->onFullscreenListener:Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;

    .line 44
    new-instance v0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$2;-><init>(Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->onInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    return-void
.end method

.method static synthetic access$002(Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->isFullscreen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->doLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;)Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->onFullscreenListener:Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;

    return-object v0
.end method

.method private doLayout()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->youtubePlayerFragment:Landroid/widget/LinearLayout;

    .line 77
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    .local v0, "playerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->isFullscreen:Z

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 80
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 81
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->showHideOtherViews(I)V

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 84
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->showHideOtherViews(I)V

    goto :goto_0
.end method


# virtual methods
.method public final addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/future/IFuture",
            "<TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "future":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method protected beforeOnCreate()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public abstract getVideoId()Ljava/lang/String;
.end method

.method protected initPlayerFragment()V
    .locals 5

    .prologue
    const v3, 0x7f08012e

    .line 92
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 93
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 95
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->youtubePlayerFragment:Landroid/widget/LinearLayout;

    .line 97
    new-instance v2, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    invoke-direct {v2}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->youtubeFragment:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    .line 98
    iget-object v2, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->youtubeFragment:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 99
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 101
    iget-object v2, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->youtubeFragment:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    const-string/jumbo v3, "AIzaSyAzkzveJkcwCEIFGw3l25Azoji5YXkZ-Zo"

    iget-object v4, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->onInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 102
    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/BaseActivityHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->onLoggedInActivityResult(IILandroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    invoke-direct {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->doLayout()V

    .line 117
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->beforeOnCreate()V

    .line 122
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    new-instance v0, Lcom/liquable/nemo/BaseActivityHelper;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/BaseActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onCreate()V

    .line 125
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(I)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->onLoggedInCreate(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onCreateFinished()V

    .line 129
    return-void
.end method

.method public final onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 134
    .local v0, "showMenu":Z
    if-eqz v0, :cond_0

    .line 135
    iput-object p1, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    .line 137
    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onDestroy()V

    .line 147
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 148
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v2, 0x7f08035a

    .line 152
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    .line 154
    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    .line 155
    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/actionbarsherlock/view/Menu;->performIdentifierAction(II)Z

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 165
    sget-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->UPDATE_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->youtubeFragment:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    const-string/jumbo v1, "AIzaSyAzkzveJkcwCEIFGw3l25Azoji5YXkZ-Zo"

    iget-object v2, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->onInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected abstract onLoggedInCreate(Landroid/os/Bundle;)V
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoggedInResume()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method protected onLoggedInStart()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 184
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 196
    :goto_0
    return v2

    .line 187
    :sswitch_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    invoke-static {p0, v0, v2, v1}, Lcom/google/android/youtube/player/YouTubeIntents;->createPlayVideoIntentWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->finish()V

    goto :goto_0

    .line 193
    :sswitch_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->finish()V

    goto :goto_0

    .line 184
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f080382 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onPause()V

    .line 202
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 203
    return-void
.end method

.method protected final onResume()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 208
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->onLoggedInResume()V

    .line 210
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 215
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onStart()V

    .line 216
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->onLoggedInStart()V

    .line 217
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onStop()V

    .line 222
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    .line 223
    return-void
.end method

.method protected showHideOtherViews(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 226
    return-void
.end method
