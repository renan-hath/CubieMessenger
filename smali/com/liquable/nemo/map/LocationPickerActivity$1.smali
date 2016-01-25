.class Lcom/liquable/nemo/map/LocationPickerActivity$1;
.super Ljava/lang/Object;
.source "LocationPickerActivity.java"

# interfaces
.implements Lcom/liquable/nemo/map/ItemizedOverlayWithListener$TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/map/LocationPickerActivity;->clearSearch()V
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
    .line 104
    iput-object p1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$1;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap(Lcom/google/android/maps/OverlayItem;)V
    .locals 2
    .param p1, "overlayItem"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$1;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # getter for: Lcom/liquable/nemo/map/LocationPickerActivity;->mode:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$000(Lcom/liquable/nemo/map/LocationPickerActivity;)Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->SEARCH:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$1;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # invokes: Lcom/liquable/nemo/map/LocationPickerActivity;->onMarkerClick(Lcom/google/android/maps/OverlayItem;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$100(Lcom/liquable/nemo/map/LocationPickerActivity;Lcom/google/android/maps/OverlayItem;)V

    .line 110
    :cond_0
    return-void
.end method
