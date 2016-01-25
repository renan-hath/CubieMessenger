.class Lcom/liquable/nemo/map/LocationPickerActivity$8;
.super Ljava/lang/Object;
.source "LocationPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/map/LocationPickerActivity;->showMyLocation()V
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
    .line 434
    iput-object p1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$8;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$8;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # invokes: Lcom/liquable/nemo/map/LocationPickerActivity;->showMyLocation()V
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1600(Lcom/liquable/nemo/map/LocationPickerActivity;)V

    .line 438
    return-void
.end method
