.class Lcom/liquable/nemo/map/LocationPickerActivity$2;
.super Ljava/lang/Object;
.source "LocationPickerActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/map/LocationPickerActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/map/LocationPickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/map/LocationPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$2;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$2;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # getter for: Lcom/liquable/nemo/map/LocationPickerActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$200(Lcom/liquable/nemo/map/LocationPickerActivity;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 181
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$2;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # getter for: Lcom/liquable/nemo/map/LocationPickerActivity;->mode:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$000(Lcom/liquable/nemo/map/LocationPickerActivity;)Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->MOVE:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    if-eq v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$2;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # invokes: Lcom/liquable/nemo/map/LocationPickerActivity;->switchToMoveMode()V
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$300(Lcom/liquable/nemo/map/LocationPickerActivity;)V

    .line 184
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method
