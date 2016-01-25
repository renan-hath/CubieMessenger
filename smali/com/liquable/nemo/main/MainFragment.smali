.class public abstract Lcom/liquable/nemo/main/MainFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "MainFragment.java"


# instance fields
.field protected isVisible:Z

.field protected updateNeeded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/main/MainFragment;->updateNeeded:Z

    return-void
.end method


# virtual methods
.method public collapseActionView()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method protected doOnPause()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method protected doOnResume()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method protected doUpdate()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method protected hideOtherItems(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuItem;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 23
    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/main/MainFragment;->isVisible:Z

    .line 32
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFragment;->doOnPause()V

    .line 33
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onPause()V

    .line 34
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onResume()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/main/MainFragment;->isVisible:Z

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/main/MainFragment;->update(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFragment;->doOnResume()V

    .line 42
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->setUserVisibleHint(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFragment;->collapseActionView()V

    .line 48
    return-void
.end method

.method protected showOtherItems(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuItem;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 52
    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f08038b

    if-eq v1, v2, :cond_0

    .line 53
    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f08038f

    if-eq v1, v2, :cond_0

    .line 54
    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method protected update(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/main/MainFragment;->updateNeeded:Z

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainFragment;->isVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainFragment;->updateNeeded:Z

    if-nez v0, :cond_2

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFragment;->doUpdate()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/main/MainFragment;->updateNeeded:Z

    goto :goto_0
.end method
