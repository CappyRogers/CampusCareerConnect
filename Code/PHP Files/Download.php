<?php
require_once 'dompdf/autoload.inc.php'; // Include Dompdf autoload file
 // Include Dompdf autoload file

use Dompdf\Dompdf;

// Create a new Dompdf instance
$pdf = new Dompdf();

// Load HTML content from PlacementPercentageGraph.php page with Google Chart and CSS
ob_start();
include 'PlacementPercentageGraph.php';
$content = ob_get_clean();
$pdf->loadHtml($content);
$pdf->setPaper('A4', 'portrait');

// Render the HTML content to PDF
$pdf->render();

// Add a new page
$pdf->addPage();

// Load HTML content from PlacementStat.php page with Google Chart and CSS
ob_start();
include 'PlacementStat.php';
$content = ob_get_clean();
$pdf->loadHtml($content);

// Render the HTML content to PDF
$pdf->render();

// Add a new page
$pdf->addPage();

// Load HTML content from CompanyName.php page with CSS
ob_start();
include 'CompanyName.php';
$content = ob_get_clean();
$pdf->loadHtml($content);

// Render the HTML content to PDF
$pdf->render();

// Add a new page
$pdf->addPage();

// Load HTML content from TopRecruiters.php page with CSS
ob_start();
include 'TopRecruiters.php';
$content = ob_get_clean();
$pdf->loadHtml($content);

// Render the HTML content to PDF
$pdf->render();

// Output the PDF to the browser
$pdf->stream('placement_report.pdf', ['Attachment' => 0]);
?>
