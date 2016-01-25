.class public Lcom/liquable/nemo/share/ShareMediaActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ShareMediaActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private broadcastReceiverRegistered:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private shareMediaAdapter:Lcom/liquable/nemo/share/ShareMediaAdapter;

.field private shareMediaListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->broadcastReceiverRegistered:Z

    .line 32
    new-instance v0, Lcom/liquable/nemo/share/ShareMediaActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/share/ShareMediaActivity$1;-><init>(Lcom/liquable/nemo/share/ShareMediaActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/share/ShareMediaActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/share/ShareMediaActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/share/ShareMediaActivity;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/share/ShareMediaActivity;)Lcom/liquable/nemo/share/ShareMediaAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/ShareMediaActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->shareMediaAdapter:Lcom/liquable/nemo/share/ShareMediaAdapter;

    return-object v0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->shareMediaAdapter:Lcom/liquable/nemo/share/ShareMediaAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/share/ShareMediaAdapter;->reset()V

    .line 98
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 101
    iget-boolean v1, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->broadcastReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "com.liquable.nemo.share.SHARE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/share/ShareMediaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->broadcastReceiverRegistered:Z

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->broadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/share/ShareMediaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->broadcastReceiverRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/liquable/nemo/share/ShareMediaActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d0486

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 52
    const v1, 0x7f030043

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/ShareMediaActivity;->setContentView(I)V

    .line 54
    new-instance v1, Lcom/liquable/nemo/share/ShareMediaAdapter;

    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/share/ShareMediaAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v1, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->shareMediaAdapter:Lcom/liquable/nemo/share/ShareMediaAdapter;

    .line 55
    const v1, 0x7f080109

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/ShareMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->shareMediaListView:Landroid/widget/ListView;

    .line 57
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->shareMediaListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->shareMediaAdapter:Lcom/liquable/nemo/share/ShareMediaAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->shareMediaListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 60
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaActivity;->shareMediaListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 62
    const v1, 0x7f08010a

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/ShareMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 63
    .local v0, "shareMediaBtn":Landroid/widget/Button;
    new-instance v1, Lcom/liquable/nemo/share/ShareMediaActivity$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/share/ShareMediaActivity$2;-><init>(Lcom/liquable/nemo/share/ShareMediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/liquable/nemo/share/ShareMediaActivity;->refresh()V

    .line 83
    return-void
.end method

.method protected onLoggedInStart()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/liquable/nemo/share/ShareMediaActivity;->registerReceiver()V

    .line 88
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/liquable/nemo/share/ShareMediaActivity;->unregisterReceiver()V

    .line 93
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onStop()V

    .line 94
    return-void
.end method
