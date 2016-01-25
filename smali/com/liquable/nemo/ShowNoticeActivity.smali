.class public Lcom/liquable/nemo/ShowNoticeActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "ShowNoticeActivity.java"

# interfaces
.implements Lcom/liquable/nemo/notice/NoticeListFragment$NoticeListCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method private gotoMainActivity()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/ShowNoticeActivity;->startActivity(Landroid/content/Intent;)V

    .line 25
    invoke-virtual {p0}, Lcom/liquable/nemo/ShowNoticeActivity;->finish()V

    .line 26
    return-void
.end method


# virtual methods
.method protected getFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    const-class v0, Lcom/liquable/nemo/notice/NoticeListFragment;

    return-object v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 18
    const v0, 0x7f0d039f

    return v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/liquable/nemo/ShowNoticeActivity;->gotoMainActivity()V

    .line 36
    invoke-super {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->onBackPressed()V

    .line 37
    return-void
.end method

.method protected onLoggedInResume()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelAllNoticeNotification()V

    .line 42
    return-void
.end method

.method public onNoticeClick(Lcom/liquable/nemo/notice/BaseNotice;)V
    .locals 0
    .param p1, "notice"    # Lcom/liquable/nemo/notice/BaseNotice;

    .prologue
    .line 47
    invoke-virtual {p1, p0}, Lcom/liquable/nemo/notice/BaseNotice;->onNoticeClick(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 52
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    invoke-super {p0, p1}, Lcom/liquable/nemo/SingleFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 59
    :goto_0
    return v0

    .line 54
    :pswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/ShowNoticeActivity;->gotoMainActivity()V

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
