var timetableHtml='';

timetableHtml+='<link rel="stylesheet" type="text/css" href="resources/css/style_timetable.css">';
timetableHtml+='		<table style="overflow:auto;" id="table" class="table table-borderless table-sm table-time">';
timetableHtml+='			<colgroup>';
timetableHtml+='				<col width="10%"/>';
timetableHtml+='				<col width="18%"/>';
timetableHtml+='				<col width="18%"/>';
timetableHtml+='				<col width="18%"/>';
timetableHtml+='				<col width="18%"/>';
timetableHtml+='				<col width="18%"/>';
timetableHtml+='				<col width="18%"/>';
timetableHtml+='			</colgroup>';
timetableHtml+='			<thead>';
timetableHtml+='			<!-- 맨 윗줄-->';
timetableHtml+='				<tr>';
timetableHtml+='					<th class="text-center">#</th>';
timetableHtml+='					<th class="text-center" style="border-left: 1px solid #e5e5e5;">Mon</th>';
timetableHtml+='					<th class="text-center" style="border-left: 1px solid #e5e5e5;">Tue</th>';
timetableHtml+='					<th class="text-center" style="border-left: 1px solid #e5e5e5;">Wen</th>';
timetableHtml+='					<th class="text-center" style="border-left: 1px solid #e5e5e5;">Thu</th>';
timetableHtml+='					<th class="text-center" style="border-left: 1px solid #e5e5e5;">Fri</th>';
timetableHtml+='				</tr>';
timetableHtml+='			</thead>';
timetableHtml+='			<tbody>';
timetableHtml+='			<!-- 1행 -->';
timetableHtml+='				<tr class="stripe-top">';
timetableHtml+='					<td>9</td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<tr>';
timetableHtml+='					<td></td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<!-- 2행 -->';
timetableHtml+='				<tr class="stripe-top">';
timetableHtml+='					<td style="border-left: 1px solid #e5e5e5;">10</td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<tr>';
timetableHtml+='					<td style="border-left: 1px solid #e5e5e5;"></td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<!-- 3행 -->';
timetableHtml+='				<tr class="stripe-top">';
timetableHtml+='					<td style="border-left: 1px solid #e5e5e5;">11</td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<tr>';
timetableHtml+='					<td></td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<!-- 4행 -->';
timetableHtml+='				<tr class="stripe-top">';
timetableHtml+='					<td>12</td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<tr>';
timetableHtml+='					<td></td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<!-- 5행 -->';
timetableHtml+='				<tr class="stripe-top">';
timetableHtml+='					<td>13</td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<tr>';
timetableHtml+='					<td></td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<!-- 6행 -->';
timetableHtml+='				<tr class="stripe-top">';
timetableHtml+='					<td>14</td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<tr>';
timetableHtml+='					<td></td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<!-- 7행 -->';
timetableHtml+='				<tr class="stripe-top">';
timetableHtml+='					<td>15</td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='				<tr>';
timetableHtml+='					<td></td>';
timetableHtml+='					<td class="content1" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content2" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content3" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content4" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='					<td class="content5" style="border-left: 1px solid #e5e5e5;">#</td>';
timetableHtml+='				</tr>';
timetableHtml+='			</tbody>';
timetableHtml+='		</table>';





var timetable = document.getElementById("timetable");
timetable.innerHTML=timetableHtml;
