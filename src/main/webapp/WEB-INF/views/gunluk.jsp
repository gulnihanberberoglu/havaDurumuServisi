<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="false" %>
<html>

<head>
	<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
        crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>

    <title>Hava Durumu</title>
</head>

<body>
    <div class="container-fluid">
        <div class="page-header">
            <h1>Hava Durumu Web Sitesi</h1>
        </div>
        <nav class="navbar navbar-light bg-light justify-content-between" style="text-align: right;">
        	<form action="" method="GET">
				<select name="il" onchange="this.form.submit()">
					<c:forEach var="il" items="${ilListesi}">
						<option ${il == ilBilgisi.il ? 'selected="selected"' : ''}>${il}</option>
					</c:forEach>
				</select>
			</form>
        </nav>
        <ul class="nav nav-tabs nav-justified">
            <li role="presentation">
                <a href="saatlik">Saatlik Hava Tahminleri </a>
            </li>
            <li role="presentation"  class="active">
                <a href="gunluk">Günlük Hava Tahminleri</a>
            </li>
        </ul>
	
	    <div class="container">
            <h3>${ilBilgisi.il} için Hava Durumu</h3>
	        <table style="margin:40px">
	            <tbody>
	                <tr>
	                    <th style="width:15%;">Saat</th>
	                    <th style="width:10%;"></th>
	                    <th>Sıcaklık
	                        <span style="font-weight:100">(°C)</span>
	                    </th>
	                    <th>Nem
	                        <span style="font-weight:100">(%)</span>
	                    </th>
	                    <th>Rüzgar Yönü</th>
	                    <th>Ort. Rüzgar Hızı
	                        <span style="font-weight:100">(km/sa)</span>
	                    </th>
	                </tr>
	                <tr>
	                    <th>
	                        <span lang="tr" 
	                        	  style="text-transform: uppercase;font-weight:100;display:block; margin-bottom:4px;">
	                        	  ${gunlukHavaBilgisi.tarihGun1}
	                        	  </span>
	                    </th>
	                    <td style="text-align: center;">
	                        <img src="https://www.mgm.gov.tr/Images_Sys/hadiseler/${gunlukHavaBilgisi.hadiseGun1}.svg">
	                    </td>
	                    <td class="xT" style="font-size: 1.6em; text-align: center; color:red;">
	                        <span>${gunlukHavaBilgisi.enYuksekGun1}</span>
	                    </td>
	                    <td class="xH" style="font-size: 1.6em; text-align: center; color:purple;">
	                        <span>${gunlukHavaBilgisi.enYuksekNemGun1}</span>
	                    </td>
	                    <td style="text-align: center;">
	                        <img src="https://www.mgm.gov.tr/Images_Sys/main_page/ryon-gri.svg" 
	                        	 style="transform: rotate(${gunlukHavaBilgisi.ruzgarYonGun1}deg);">
	                    </td>
	                    <td class="xH" style="font-size: 1.6em; text-align: center; color:green;">
	                        <span>${gunlukHavaBilgisi.ruzgarHizGun1}</span>
	                    </td>
	                </tr>
	                <tr>
	                    <th>
	                        <span lang="tr" 
	                        	  style="text-transform: uppercase;font-weight:100;display:block; margin-bottom:4px;">
	                        	  ${gunlukHavaBilgisi.tarihGun2}
	                        	  </span>
	                    </th>
	                    <td style="text-align: center;">
	                        <img src="https://www.mgm.gov.tr/Images_Sys/hadiseler/${gunlukHavaBilgisi.hadiseGun2}.svg">
	                    </td>
	                    <td class="xT" style="font-size: 1.6em; text-align: center; color:red;">
	                        <span>${gunlukHavaBilgisi.enYuksekGun2}</span>
	                    </td>
	                    <td class="xH" style="font-size: 1.6em; text-align: center; color:purple;">
	                        <span>${gunlukHavaBilgisi.enYuksekNemGun2}</span>
	                    </td>
	                    <td style="text-align: center;">
	                        <img src="https://www.mgm.gov.tr/Images_Sys/main_page/ryon-gri.svg" 
	                        	 style="transform: rotate(${gunlukHavaBilgisi.ruzgarYonGun2}deg);">
	                    </td>
	                    <td class="xH" style="font-size: 1.6em; text-align: center; color:green;">
	                        <span>${gunlukHavaBilgisi.ruzgarHizGun2}</span>
	                    </td>
	                </tr>
	                <tr>
	                    <th>
	                        <span lang="tr" 
	                        	  style="text-transform: uppercase;font-weight:100;display:block; margin-bottom:4px;">
	                        	  ${gunlukHavaBilgisi.tarihGun3}
	                        	  </span>
	                    </th>
	                    <td style="text-align: center;">
	                        <img src="https://www.mgm.gov.tr/Images_Sys/hadiseler/${gunlukHavaBilgisi.hadiseGun2}.svg">
	                    </td>
	                    <td class="xT" style="font-size: 1.6em; text-align: center; color:red;">
	                        <span>${gunlukHavaBilgisi.enYuksekGun3}</span>
	                    </td>
	                    <td class="xH" style="font-size: 1.6em; text-align: center; color:purple;">
	                        <span>${gunlukHavaBilgisi.enYuksekNemGun3}</span>
	                    </td>
	                    <td style="text-align: center;">
	                        <img src="https://www.mgm.gov.tr/Images_Sys/main_page/ryon-gri.svg" 
	                        	 style="transform: rotate(${gunlukHavaBilgisi.ruzgarYonGun3}deg);">
	                    </td>
	                    <td class="xH" style="font-size: 1.6em; text-align: center; color:green;">
	                        <span>${gunlukHavaBilgisi.ruzgarHizGun3}</span>
	                    </td>
	                </tr>
	            	<tr>
	                    <th>
	                        <span lang="tr" 
	                        	  style="text-transform: uppercase;font-weight:100;display:block; margin-bottom:4px;">
	                        	  ${gunlukHavaBilgisi.tarihGun4}
	                        	  </span>
	                    </th>
	                    <td style="text-align: center;">
	                        <img src="https://www.mgm.gov.tr/Images_Sys/hadiseler/${gunlukHavaBilgisi.hadiseGun2}.svg">
	                    </td>
	                    <td class="xT" style="font-size: 1.6em; text-align: center; color:red;">
	                        <span>${gunlukHavaBilgisi.enYuksekGun4}</span>
	                    </td>
	                    <td class="xH" style="font-size: 1.6em; text-align: center; color:purple;">
	                        <span>${gunlukHavaBilgisi.enYuksekNemGun4}</span>
	                    </td>
	                    <td style="text-align: center;">
	                        <img src="https://www.mgm.gov.tr/Images_Sys/main_page/ryon-gri.svg" 
	                        	 style="transform: rotate(${gunlukHavaBilgisi.ruzgarYonGun4}deg);">
	                    </td>
	                    <td class="xH" style="font-size: 1.6em; text-align: center; color:green;">
	                        <span>${gunlukHavaBilgisi.ruzgarHizGun4}</span>
	                    </td>
	                </tr>
					<tr>
	                    <th>
	                        <span lang="tr" 
	                        	  style="text-transform: uppercase;font-weight:100;display:block; margin-bottom:4px;">
	                        	  ${gunlukHavaBilgisi.tarihGun5}
	                        	  </span>
	                    </th>
	                    <td style="text-align: center;">
	                        <img src="https://www.mgm.gov.tr/Images_Sys/hadiseler/${gunlukHavaBilgisi.hadiseGun2}.svg">
	                    </td>
	                    <td class="xT" style="font-size: 1.6em; text-align: center; color:red;">
	                        <span>${gunlukHavaBilgisi.enYuksekGun5}</span>
	                    </td>
	                    <td class="xH" style="font-size: 1.6em; text-align: center; color:purple;">
	                        <span>${gunlukHavaBilgisi.enYuksekNemGun5}</span>
	                    </td>
	                    <td style="text-align: center;">
	                        <img src="https://www.mgm.gov.tr/Images_Sys/main_page/ryon-gri.svg" 
	                        	 style="transform: rotate(${gunlukHavaBilgisi.ruzgarYonGun5}deg);">
	                    </td>
	                    <td class="xH" style="font-size: 1.6em; text-align: center; color:green;">
	                        <span>${gunlukHavaBilgisi.ruzgarHizGun5}</span>
	                    </td>
	                </tr>
	            </tbody>
	        </table>
	    </div>
    </div>
</body>

</html>