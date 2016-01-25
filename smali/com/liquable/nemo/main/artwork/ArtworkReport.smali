.class public Lcom/liquable/nemo/main/artwork/ArtworkReport;
.super Ljava/lang/Object;
.source "ArtworkReport.java"


# static fields
.field public static final COLUMN_NAME_ARTWORK_ID:Ljava/lang/String; = "ARP_ARTWORK_ID"

.field public static final COLUMN_NAME_REPORT_TIME:Ljava/lang/String; = "ARP_REPORT_TIME"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "ARTWORK_REPORT"


# instance fields
.field private final artworkId:Ljava/lang/String;

.field private final reportTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ARP_ARTWORK_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ARP_REPORT_TIME"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/main/artwork/ArtworkReport;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "artworkId"    # Ljava/lang/String;
    .param p2, "reportTime"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/main/artwork/ArtworkReport;->artworkId:Ljava/lang/String;

    .line 29
    iput-wide p2, p0, Lcom/liquable/nemo/main/artwork/ArtworkReport;->reportTime:J

    .line 30
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/main/artwork/ArtworkReport;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 9
    const-string/jumbo v4, "ARP_ARTWORK_ID"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    .local v0, "artworkId":Ljava/lang/String;
    const-string/jumbo v4, "ARP_REPORT_TIME"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 11
    .local v2, "reportTime":J
    new-instance v1, Lcom/liquable/nemo/main/artwork/ArtworkReport;

    invoke-direct {v1, v0, v2, v3}, Lcom/liquable/nemo/main/artwork/ArtworkReport;-><init>(Ljava/lang/String;J)V

    .line 12
    .local v1, "artworkReport":Lcom/liquable/nemo/main/artwork/ArtworkReport;
    return-object v1
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 34
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "ARP_ARTWORK_ID"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkReport;->getArtworkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v1, "ARP_REPORT_TIME"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkReport;->getReportTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    return-object v0
.end method

.method public getArtworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkReport;->artworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getReportTime()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkReport;->reportTime:J

    return-wide v0
.end method
