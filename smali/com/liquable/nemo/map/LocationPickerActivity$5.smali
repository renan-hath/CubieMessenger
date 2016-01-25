.class Lcom/liquable/nemo/map/LocationPickerActivity$5;
.super Ljava/lang/Object;
.source "LocationPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/map/LocationPickerActivity;->onMarkerClick(Lcom/google/android/maps/OverlayItem;)V
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
    .line 276
    iput-object p1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$5;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$5;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # invokes: Lcom/liquable/nemo/map/LocationPickerActivity;->returnLocationToShare()V
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$500(Lcom/liquable/nemo/map/LocationPickerActivity;)V

    .line 280
    return-void
.end method
