<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="css/shop/shopList.css" />
    <title> Pet LiSe </title>
<script src="/js/jquery-3.6.4.min.js"></script>
<script>
$(document).ready(function(){
    //vs추가추가추가
});
</script>
</head>
<body>
    <div id='layout'>
        <div id="pet_category">
            <div> <!--강아지 카테고리-->
                <svg width="75" height="60" viewBox="0 0 75 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M40.613 57.1893H61.5258C61.5258 57.1893 60.0946 48.8282 51.6821 42.6501L22.2641 43.1547C22.2641 43.1547 15.0872 47.4999 13.2646 57.1893H31.3253"
                        fill="white" />
                    <path
                        d="M61.962 58H40.7642C40.1902 58 39.7205 57.5534 39.7205 57.0074C39.7205 56.4615 40.1902 56.0149 40.7642 56.0149H60.6156C59.8745 53.6824 57.6201 48.2829 51.6397 43.9851L22.4784 44.4615C21.3512 45.196 16.1848 48.9082 14.3375 56.0149H31.35C31.924 56.0149 32.3937 56.4615 32.3937 57.0074C32.3937 57.5534 31.924 58 31.35 58H13.0433C12.7302 58 12.4379 57.871 12.2396 57.6427C12.0413 57.4144 11.9578 57.1166 12.0204 56.8288C13.9304 47.1613 21.3095 42.8139 21.6226 42.6253C21.7791 42.536 21.9566 42.4864 22.1444 42.4864L51.9632 42C52.1928 42 52.412 42.0596 52.5999 42.1886C61.367 48.3127 62.9222 56.4913 62.9848 56.8387C63.037 57.1266 62.9535 57.4243 62.7552 57.6427C62.5569 57.871 62.2646 58 61.962 58Z"
                        fill="#30323A" />
                    <path
                        d="M25.9314 42.7934L39.585 56.0763H59.9727C59.9727 56.0763 57.5117 47.5814 48.8521 41.6608L25.9314 42.7934Z"
                        fill="#C9C9C9" />
                    <path
                        d="M61.5258 24.7641C61.5258 37.8823 50.7245 48.5086 37.3901 48.5086C24.066 48.5086 13.2646 37.872 13.2646 24.7641C13.2646 11.646 24.066 1.01965 37.3901 1.01965C50.7142 1.01965 61.5258 11.6563 61.5258 24.7641Z"
                        fill="white" />
                    <path
                        d="M37.3934 49.5483C23.5236 49.5483 12.2383 38.438 12.2383 24.7741C12.2383 11.1103 23.5236 0 37.3934 0C51.2632 0 62.5588 11.1103 62.5588 24.7741C62.5588 38.4277 51.2735 49.5483 37.3934 49.5483ZM37.3934 2.04907C24.6562 2.04907 14.2976 12.2429 14.2976 24.7638C14.2976 37.2951 24.6562 47.4786 37.3934 47.4786C50.1306 47.4786 60.4995 37.2848 60.4995 24.7638C60.4995 12.2429 50.1306 2.04907 37.3934 2.04907Z"
                        fill="#30323A" />
                    <path
                        d="M29.3207 24.3624C29.3207 25.6289 28.291 26.6585 27.0245 26.6585C25.758 26.6585 24.7283 25.6289 24.7283 24.3624C24.7283 23.0958 25.758 22.0662 27.0245 22.0662C28.291 22.0662 29.3207 23.0958 29.3207 24.3624Z"
                        fill="#30323A" />
                    <path
                        d="M50.2342 24.3215C50.2342 25.588 49.2045 26.6176 47.938 26.6176C46.6715 26.6176 45.6418 25.588 45.6418 24.3215C45.6418 23.0549 46.6715 22.0253 47.938 22.0253C49.2045 22.0253 50.2342 23.0549 50.2342 24.3215Z"
                        fill="#30323A" />
                    <path
                        d="M60.5184 2.99555C60.5184 2.99555 54.711 1.65697 51.6219 2.00706C51.6219 2.00706 47.8121 2.8308 49.0683 5.94044C49.0683 5.94044 54.9478 19.9441 59.2622 22.7551C59.2622 22.7551 63.2985 26.3899 64.8224 21.2518C64.8224 21.2518 65.6565 12.654 63.5148 6.65092C63.525 6.65092 63.0926 3.96345 60.5184 2.99555Z"
                        fill="#686868" />
                    <path
                        d="M62.1138 25.0322C60.456 25.0322 58.9938 23.879 58.6437 23.5803C54.1337 20.5428 48.3675 6.9201 48.1204 6.34348C47.5438 4.92252 47.8218 3.87224 48.1513 3.23384C49.0368 1.55546 51.158 1.05091 51.3948 0.999428C51.8787 0.937647 52.3009 0.917053 52.7746 0.917053C56.0386 0.917053 60.5487 1.94674 60.734 1.99822C60.7752 2.00852 60.8267 2.01881 60.8679 2.03941C63.6789 3.09998 64.3894 5.79775 64.5026 6.38466C66.665 12.5319 65.8721 21.0061 65.8412 21.3562C65.8309 21.418 65.8206 21.4901 65.8 21.5519C64.966 24.435 63.3288 25.0322 62.1138 25.0322ZM51.7964 3.0279C51.3742 3.13087 50.3342 3.52215 49.9738 4.20174C49.7885 4.56213 49.8091 5.00489 50.0356 5.56092C51.6316 9.36044 56.5226 19.7396 59.8382 21.902C59.8794 21.9329 59.9205 21.9637 59.9617 21.9946C60.2706 22.2624 61.2591 22.9728 62.1138 22.9728C62.3918 22.9728 63.2155 22.9625 63.8127 21.0576C63.8951 20.1 64.4717 12.3774 62.5565 6.99218C62.5359 6.93039 62.5153 6.86861 62.5051 6.80683C62.4948 6.72446 62.1241 4.73717 60.2192 3.9855C59.5705 3.84135 54.5662 2.73959 51.7964 3.0279Z"
                        fill="#30323A" />
                    <path
                        d="M14.264 2.99635C14.264 2.99635 20.0715 1.65776 23.1605 2.00785C23.1605 2.00785 26.9703 2.8316 25.7038 5.94124C25.7038 5.94124 19.8243 19.9449 15.51 22.7559C15.51 22.7559 11.4736 26.3907 9.94968 21.2526C9.94968 21.2526 9.11564 12.6548 11.2574 6.65172C11.2574 6.65172 11.6898 3.96425 14.264 2.99635Z"
                        fill="#686868" />
                    <path
                        d="M12.6692 25.0316C11.4541 25.0316 9.81695 24.4241 8.96231 21.541C8.94172 21.4792 8.93142 21.4174 8.92112 21.3454C8.89023 20.985 8.09738 12.521 10.2597 6.3738C10.3833 5.78688 11.0835 3.08911 13.8945 2.02854C13.9357 2.00795 13.9769 1.99765 14.0283 1.98735C14.2137 1.94617 18.7237 0.906189 21.9878 0.906189C22.4614 0.906189 22.8836 0.926783 23.2646 0.96797C23.6044 1.04005 25.7255 1.53429 26.6111 3.21268C26.9509 3.84078 27.2186 4.90135 26.6522 6.31202C26.4051 6.90923 20.6389 20.5216 16.1289 23.5592C15.7891 23.8784 14.327 25.0316 12.6692 25.0316ZM10.9702 21.0571C11.5674 22.9723 12.4014 22.9723 12.6692 22.9723C13.5341 22.9723 14.5329 22.2412 14.8212 21.9941C14.8624 21.9632 14.9036 21.922 14.9448 21.9014C18.2603 19.7391 23.1513 9.35988 24.7576 5.55005C25.0871 4.7469 24.8709 4.33503 24.7988 4.20117C24.4178 3.48039 23.3058 3.09941 22.9351 3.01704C22.7189 2.99644 22.3585 2.98615 21.9878 2.98615C19.1665 2.98615 15.1301 3.86138 14.5638 3.99523C12.628 4.7675 12.2779 6.79597 12.2779 6.81656C12.2676 6.87834 12.247 6.94012 12.2264 7.00191C10.3112 12.3768 10.8878 20.0995 10.9702 21.0571Z"
                        fill="#30323A" />
                    <path
                        d="M41.0993 31.8802C41.0993 32.6937 39.5445 33.3424 37.619 33.3424C35.6935 33.3424 34.1387 32.6834 34.1387 31.8802C34.1387 31.0668 35.6935 30.4181 37.619 30.4181C39.5445 30.4181 41.0993 31.0771 41.0993 31.8802Z"
                        fill="#30323A" />
                    <path
                        d="M41.7803 38.9634C38.8972 38.9634 36.5598 36.8114 36.5598 34.1548C36.5598 33.5885 37.0232 33.1251 37.5895 33.1251C38.1558 33.1251 38.6192 33.5885 38.6192 34.1548C38.6192 35.6684 40.0401 36.9041 41.7803 36.9041C43.5205 36.9041 44.9414 35.6684 44.9414 34.1548C44.9414 33.5885 45.4048 33.1251 45.9711 33.1251C46.5374 33.1251 47.0008 33.5885 47.0008 34.1548C47.0008 36.8011 44.6531 38.9634 41.7803 38.9634Z"
                        fill="#30323A" />
                    <path
                        d="M33.3679 38.9634C30.4951 38.9634 28.1475 36.8114 28.1475 34.1548C28.1475 33.5885 28.6108 33.1251 29.1771 33.1251C29.7435 33.1251 30.2068 33.5885 30.2068 34.1548C30.2068 35.6684 31.6278 36.9041 33.3679 36.9041C35.1081 36.9041 36.5291 35.6684 36.5291 34.1548C36.5291 33.5885 36.9924 33.1251 37.5588 33.1251C38.1251 33.1251 38.5884 33.5885 38.5884 34.1548C38.5884 36.8011 36.2511 38.9634 33.3679 38.9634Z"
                        fill="#30323A" />
                    <path
                        d="M37.5768 35.3488C37.0105 35.3488 36.5471 34.8854 36.5471 34.3191V32.1259C36.5471 31.5595 37.0105 31.0962 37.5768 31.0962C38.1431 31.0962 38.6065 31.5595 38.6065 32.1259V34.3191C38.6065 34.8957 38.1431 35.3488 37.5768 35.3488Z"
                        fill="#373737" />
                    <path
                        d="M29.4695 58.0594H1.02968C0.463357 58.0594 0 57.596 0 57.0297C0 56.4634 0.463357 56 1.02968 56H29.4695C30.0358 56 30.4992 56.4634 30.4992 57.0297C30.4992 57.596 30.0358 58.0594 29.4695 58.0594Z"
                        fill="#FFB100" />
                    <path
                        d="M67.596 58H28.418C27.6381 58 27 57.55 27 57C27 56.45 27.6381 56 28.418 56H67.5818C68.3617 56 68.9998 56.45 68.9998 57C69.014 57.55 68.3759 58 67.596 58Z"
                        fill="#FFB100" />
                    <path
                        d="M25.1678 53.2442C25.1678 56.4054 22.1818 58.9693 18.5058 58.9693C14.8298 58.9693 11.8438 56.4054 11.8438 53.2442C11.8438 50.0831 14.8298 47.5192 18.5058 47.5192C22.1818 47.5089 25.1678 50.0728 25.1678 53.2442Z"
                        fill="white" />
                    <path
                        d="M18.5084 60C14.2661 60 10.8167 56.9728 10.8167 53.2453C10.8167 49.5179 14.2661 46.4906 18.5084 46.4906C22.7507 46.4906 26.2001 49.5179 26.2001 53.2453C26.2001 56.9728 22.7507 60 18.5084 60ZM18.5084 48.5397C15.3987 48.5397 12.876 50.6505 12.876 53.235C12.876 55.8298 15.3987 57.9304 18.5084 57.9304C21.618 57.9304 24.1407 55.8195 24.1407 53.235C24.1407 50.6505 21.618 48.5397 18.5084 48.5397Z"
                        fill="#30323A" />
                    <path
                        d="M63.5748 53.2442C63.5748 56.4054 60.5887 58.9693 56.9128 58.9693C53.2368 58.9693 50.2507 56.4054 50.2507 53.2442C50.2507 50.0831 53.2368 47.5192 56.9128 47.5192C60.5887 47.5089 63.5748 50.0728 63.5748 53.2442Z"
                        fill="white" />
                    <path
                        d="M56.9046 60C52.6623 60 49.2129 56.9728 49.2129 53.2453C49.2129 49.5179 52.6623 46.4906 56.9046 46.4906C61.1469 46.4906 64.5963 49.5179 64.5963 53.2453C64.6066 56.9728 61.1469 60 56.9046 60ZM56.9046 48.5397C53.795 48.5397 51.2723 50.6505 51.2723 53.235C51.2723 55.8298 53.795 57.9304 56.9046 57.9304C60.0143 57.9304 62.537 55.8195 62.537 53.235C62.5473 50.6505 60.0143 48.5397 56.9046 48.5397Z"
                        fill="#30323A" />
                    <path
                        d="M67.697 36.3267C67.4087 36.3267 67.1307 36.2031 66.9247 35.9766C66.554 35.5441 66.5952 34.8954 67.0174 34.5248L72.6498 29.5926C73.0822 29.2219 73.7309 29.2631 74.1016 29.6853C74.4723 30.1177 74.4311 30.7664 74.0089 31.1371L68.3766 36.0693C68.1809 36.2443 67.9338 36.3267 67.697 36.3267Z"
                        fill="#30323A" />
                    <path
                        d="M72.175 44.5444C72.1133 44.5444 72.0412 44.5341 71.9794 44.5238L69.4464 44.0295C68.8904 43.9163 68.5197 43.3808 68.6329 42.8248C68.7462 42.2688 69.2713 41.8981 69.8377 42.0114L72.3707 42.5056C72.9267 42.6189 73.2974 43.1543 73.1841 43.7103C73.0812 44.2046 72.659 44.5444 72.175 44.5444Z"
                        fill="#30323A" />
                    <path
                        d="M7.66539 36.3266C7.42856 36.3266 7.18144 36.2442 6.9858 36.0691L1.35344 31.137C0.920975 30.7663 0.879788 30.1073 1.26077 29.6851C1.63146 29.2526 2.29045 29.2115 2.71262 29.5924L8.34498 34.5246C8.77745 34.8953 8.81863 35.5543 8.43765 35.9765C8.23172 36.2133 7.9537 36.3266 7.66539 36.3266Z"
                        fill="#30323A" />
                    <path
                        d="M3.18768 44.5444C2.70373 44.5444 2.27126 44.2046 2.17859 43.7103C2.06533 43.1543 2.43601 42.6086 2.99204 42.5056L5.52506 42.0114C6.08109 41.8981 6.62682 42.2688 6.72978 42.8248C6.84305 43.3808 6.47236 43.9266 5.91634 44.0295L3.38332 44.5238C3.32154 44.5444 3.24946 44.5444 3.18768 44.5444Z"
                        fill="#30323A" />
                </svg>
                <span>강아지</span>
            </div>
            <div><!--고양이 카테고리-->
                <svg width="66" height="60" viewBox="0 0 66 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M31.4757 57.4181H50.7753C50.7753 57.4181 49.4603 49.7362 41.731 44.0598L14.7021 44.5234C14.7021 44.5234 8.10811 48.5157 6.43359 57.4181H23.614"
                        fill="white" />
                    <path
                        d="M51.0434 58H31.4216C30.8926 58 30.4598 57.5813 30.4598 57.0695C30.4598 56.5577 30.8926 56.139 31.4216 56.139H49.8122C49.1293 53.9522 47.0517 48.8902 41.5403 44.861L14.6662 45.3077C13.6274 45.9963 8.86625 49.4764 7.16377 56.139H23.4383C23.9673 56.139 24.4001 56.5577 24.4001 57.0695C24.4001 57.5813 23.9673 58 23.4383 58H5.96146C5.6729 58 5.40358 57.879 5.22083 57.665C5.03808 57.451 4.96113 57.1718 5.01884 56.902C6.77903 47.8387 13.5793 43.763 13.8679 43.5862C14.0121 43.5025 14.1757 43.456 14.3488 43.456L41.8288 43C42.0308 43.0093 42.2424 43.0558 42.4156 43.1768C50.4951 48.9181 51.9283 56.5856 51.986 56.9113C52.0341 57.1811 51.9571 57.4603 51.7744 57.665C51.5916 57.879 51.3223 58 51.0434 58Z"
                        fill="#30323A" />
                    <path
                        d="M56.0978 58H3.90217C2.85598 58 2 57.55 2 57C2 56.45 2.85598 56 3.90217 56H56.0978C57.144 56 58 56.45 58 57C58 57.55 57.144 58 56.0978 58Z"
                        fill="#FFB100" />
                    <path
                        d="M17.3806 53.7924C17.3806 56.6968 14.6371 59.0525 11.2597 59.0525C7.88224 59.0525 5.13867 56.6968 5.13867 53.7924C5.13867 50.888 7.88224 48.5323 11.2597 48.5323C14.6371 48.5323 17.3806 50.888 17.3806 53.7924Z"
                        fill="white" />
                    <path
                        d="M11.2624 60.0003C7.3646 60.0003 4.19531 57.2189 4.19531 53.7941C4.19531 50.3694 7.3646 47.588 11.2624 47.588C15.1601 47.588 18.3294 50.3694 18.3294 53.7941C18.3294 57.2189 15.1601 60.0003 11.2624 60.0003ZM11.2624 49.4801C8.40526 49.4801 6.08743 51.4195 6.08743 53.7941C6.08743 56.1782 8.40526 58.1082 11.2624 58.1082C14.1194 58.1082 16.4373 56.1687 16.4373 53.7941C16.4373 51.4101 14.11 49.4801 11.2624 49.4801Z"
                        fill="#30323A" />
                    <path d="M18 44.0214L30.2279 56H50C50 56 47.7579 48.3393 39.8258 43L18 44.0214Z" fill="#C9C9C9" />
                    <path
                        d="M52.6595 53.7924C52.6595 56.6968 49.9159 59.0525 46.5385 59.0525C43.161 59.0525 40.4175 56.6968 40.4175 53.7924C40.4175 50.888 43.161 48.5323 46.5385 48.5323C49.9159 48.5323 52.6595 50.888 52.6595 53.7924Z"
                        fill="white" />
                    <path
                        d="M46.5392 60.0003C42.6415 60.0003 39.4722 57.2189 39.4722 53.7941C39.4722 50.3694 42.6415 47.588 46.5392 47.588C50.437 47.588 53.6063 50.3694 53.6063 53.7941C53.6063 57.2189 50.437 60.0003 46.5392 60.0003ZM46.5392 49.4801C43.6821 49.4801 41.3643 51.4195 41.3643 53.7941C41.3643 56.1782 43.6821 58.1082 46.5392 58.1082C49.3963 58.1082 51.7141 56.1687 51.7141 53.7941C51.7141 51.4101 49.3963 49.4801 46.5392 49.4801Z"
                        fill="#30323A" />
                    <path
                        d="M46.6866 14.8742C48.1246 6.5962 46.8947 0.948242 46.8947 0.948242C42.4482 0.948242 36.507 4.846 34.2648 6.43537C32.316 5.91504 30.263 5.63122 28.1344 5.63122C25.9017 5.63122 23.7447 5.94342 21.7012 6.52052C19.5442 4.97844 13.4705 0.948242 8.95781 0.948242C8.95781 0.948242 7.69009 6.8138 9.25108 15.3472C6.94271 18.7057 5.58984 22.717 5.58984 27.0216C5.58984 38.8378 15.6843 48.4119 28.1344 48.4119C40.5845 48.4119 50.6789 38.8378 50.6789 27.0216C50.6789 22.5089 49.2031 18.3273 46.6866 14.8742Z"
                        fill="white" />
                    <path
                        d="M28.1371 49.3558C15.1856 49.3558 4.64648 39.337 4.64648 27.0194C4.64648 22.8 5.89528 18.6941 8.25096 15.1369C6.77511 6.72646 7.97661 0.99336 8.03337 0.747385C8.12797 0.312199 8.51586 0 8.9605 0C13.4827 0 19.2631 3.64232 21.8931 5.48713C25.8665 4.44647 30.1049 4.41809 34.0878 5.41145C36.6894 3.60448 42.432 0 46.9068 0C47.3515 0 47.7394 0.312199 47.834 0.747385C47.8813 0.983899 49.0449 6.49941 47.7015 14.645C50.2748 18.3157 51.6371 22.5918 51.6371 27.0194C51.6277 39.337 41.0886 49.3558 28.1371 49.3558ZM9.75519 1.92996C9.4903 3.77477 9.00781 8.71318 10.1904 15.1653C10.2377 15.4113 10.1809 15.6667 10.039 15.8748C7.75901 19.1955 6.54806 23.0459 6.54806 27.0194C6.54806 38.2964 16.2357 47.4637 28.1465 47.4637C40.0574 47.4637 49.745 38.2964 49.745 27.0194C49.745 22.8567 48.43 18.8455 45.9324 15.4302C45.781 15.2221 45.7243 14.9666 45.7621 14.7112C46.8406 8.45775 46.3771 3.72746 46.1122 1.93942C41.9211 2.3746 36.4624 6.03584 34.8162 7.20895C34.5892 7.36978 34.2959 7.42655 34.0216 7.35086C30.086 6.29128 25.876 6.31966 21.9593 7.42655C21.685 7.50223 21.3822 7.45493 21.1552 7.28464C19.4901 6.09261 13.9935 2.3746 9.75519 1.92996Z"
                        fill="#30323A" />
                    <path
                        d="M45.3245 30.1606C44.8326 30.1606 44.4163 29.7821 44.3785 29.2807C44.3406 28.7604 44.738 28.3063 45.2583 28.2684L55.3149 27.5684C55.8258 27.54 56.2893 27.9279 56.3272 28.4482C56.365 28.9685 55.9677 29.4226 55.4473 29.4605L45.3908 30.1606C45.3624 30.1606 45.3434 30.1606 45.3245 30.1606Z"
                        fill="#30323A" />
                    <path
                        d="M53.8244 36.1965C53.7582 36.1965 53.692 36.187 53.6163 36.1776L44.6666 34.2098C44.1557 34.0962 43.8341 33.5948 43.9476 33.084C44.0611 32.5731 44.5625 32.2514 45.0734 32.365L54.0231 34.3328C54.534 34.4463 54.8556 34.9477 54.7421 35.4586C54.6475 35.8937 54.2596 36.1965 53.8244 36.1965Z"
                        fill="#30323A" />
                    <path
                        d="M11.3294 30.1606C11.3104 30.1606 11.2821 30.1606 11.2631 30.1606L1.20655 29.4605C0.686215 29.4226 0.288871 28.9685 0.326713 28.4482C0.364555 27.9279 0.818663 27.54 1.33899 27.5684L11.3956 28.2684C11.9159 28.3063 12.3133 28.7604 12.2754 29.2807C12.2376 29.7821 11.8213 30.1606 11.3294 30.1606Z"
                        fill="#30323A" />
                    <path
                        d="M2.81907 36.1965C2.38388 36.1965 1.996 35.8937 1.89193 35.4586C1.7784 34.9477 2.10006 34.4463 2.61093 34.3328L11.5606 32.365C12.0715 32.2514 12.5729 32.5731 12.6864 33.084C12.8 33.5948 12.4783 34.0962 11.9674 34.2098L3.01774 36.1776C2.96098 36.187 2.89475 36.1965 2.81907 36.1965Z"
                        fill="#30323A" />
                    <path
                        d="M20.9856 26.8129C20.9856 27.9482 20.068 28.8753 18.9232 28.8753C17.788 28.8753 16.8608 27.9576 16.8608 26.8129C16.8608 25.6776 17.788 24.7505 18.9232 24.7505C20.0585 24.7505 20.9856 25.6682 20.9856 26.8129Z"
                        fill="#30323A" />
                    <path
                        d="M39.7356 26.7738C39.7356 27.9186 38.818 28.8362 37.6732 28.8362C36.538 28.8362 35.6108 27.9186 35.6108 26.7738C35.6108 25.6386 36.5285 24.7114 37.6732 24.7114C38.818 24.7114 39.7356 25.6386 39.7356 26.7738Z"
                        fill="#30323A" />
                    <path
                        d="M43.2655 12.3098C43.2655 12.3098 39.9448 9.7365 38.1284 8.88505C38.1284 8.88505 41.1274 6.52937 43.5872 5.56439C43.5872 5.56439 43.5872 9.52837 43.2655 12.3098Z"
                        fill="#F47253" />
                    <path
                        d="M43.2671 13.2533C43.0589 13.2533 42.8602 13.1871 42.69 13.0546C42.6521 13.0262 39.4355 10.5381 37.7326 9.73396C37.4393 9.59205 37.2312 9.30824 37.1934 8.98658C37.1555 8.66492 37.288 8.34326 37.5529 8.13513C37.6759 8.03106 40.6938 5.68484 43.2576 4.68202C43.5509 4.56849 43.8725 4.60634 44.1374 4.77663C44.3929 4.95638 44.5537 5.24965 44.5537 5.56185C44.5537 5.72268 44.5537 9.61098 44.2226 12.4113C44.1847 12.7519 43.9671 13.0452 43.6455 13.1776C43.5225 13.2344 43.39 13.2533 43.2671 13.2533ZM39.8802 8.77845C40.7695 9.32716 41.725 9.99886 42.4818 10.5381C42.567 9.28932 42.6048 8.01214 42.6332 7.05662C41.6115 7.59588 40.6181 8.25811 39.8802 8.77845Z"
                        fill="#30323A" />
                    <path
                        d="M12.8197 12.3088C12.8197 12.3088 16.1404 9.73553 17.9568 8.88408C17.9568 8.88408 14.9578 6.52839 12.498 5.56342C12.498 5.56342 12.498 9.52739 12.8197 12.3088Z"
                        fill="#F47253" />
                    <path
                        d="M12.8241 13.2552C12.7011 13.2552 12.5781 13.2268 12.4551 13.1795C12.1429 13.047 11.9253 12.7537 11.878 12.4132C11.5563 9.60337 11.5469 5.72454 11.5469 5.56371C11.5469 5.25151 11.6982 4.95823 11.9631 4.77848C12.2186 4.59873 12.5497 4.56089 12.843 4.68388C15.4068 5.6867 18.4152 8.04238 18.5477 8.13698C18.8031 8.33566 18.945 8.65731 18.9072 8.98843C18.8694 9.31009 18.6707 9.59391 18.3679 9.73582C16.665 10.54 13.439 13.0281 13.4011 13.0565C13.2309 13.1889 13.0227 13.2552 12.8241 13.2552ZM13.4674 7.05848C13.4863 8.014 13.5336 9.29117 13.6187 10.54C14.3661 9.99126 15.3311 9.32901 16.2204 8.7803C15.473 8.25997 14.4797 7.59773 13.4674 7.05848Z"
                        fill="#30323A" />
                    <path
                        d="M31.7435 33.4156C31.7435 34.1441 30.3433 34.7306 28.6215 34.7306C26.8997 34.7306 25.4995 34.1441 25.4995 33.4156C25.4995 32.6871 26.8997 32.1006 28.6215 32.1006C30.3433 32.1006 31.7435 32.6871 31.7435 33.4156Z"
                        fill="#30323A" />
                    <path
                        d="M32.3459 39.7814C29.7537 39.7814 27.644 37.842 27.644 35.4485C27.644 34.9282 28.0698 34.5024 28.5901 34.5024C29.1104 34.5024 29.5362 34.9282 29.5362 35.4485C29.5362 36.7919 30.7944 37.8893 32.3459 37.8893C33.8975 37.8893 35.1557 36.7919 35.1557 35.4485C35.1557 34.9282 35.5815 34.5024 36.1018 34.5024C36.6221 34.5024 37.0478 34.9282 37.0478 35.4485C37.0478 37.8326 34.9381 39.7814 32.3459 39.7814Z"
                        fill="#30323A" />
                    <path
                        d="M24.8088 39.7814C22.2166 39.7814 20.1069 37.842 20.1069 35.4485C20.1069 34.9282 20.5327 34.5024 21.053 34.5024C21.5733 34.5024 21.999 34.9282 21.999 35.4485C21.999 36.7919 23.2573 37.8893 24.8088 37.8893C26.3604 37.8893 27.6186 36.7919 27.6186 35.4485C27.6186 34.9282 28.0443 34.5024 28.5647 34.5024C29.085 34.5024 29.5107 34.9282 29.5107 35.4485C29.5107 37.8326 27.401 39.7814 24.8088 39.7814Z"
                        fill="#30323A" />
                    <path
                        d="M28.5823 36.5459C28.062 36.5459 27.6362 36.1202 27.6362 35.5999V33.6321C27.6362 33.1118 28.062 32.686 28.5823 32.686C29.1026 32.686 29.5283 33.1118 29.5283 33.6321V35.5999C29.5283 36.1202 29.1026 36.5459 28.5823 36.5459Z"
                        fill="#373737" />
                    <path
                        d="M64.42 11.0882H56.615C56.0947 11.0882 55.6689 10.6625 55.6689 10.1422C55.6689 9.62183 56.0947 9.19611 56.615 9.19611H64.42C64.9403 9.19611 65.366 9.62183 65.366 10.1422C65.366 10.6625 64.9403 11.0882 64.42 11.0882Z"
                        fill="#30323A" />
                    <path
                        d="M59.2167 16.763H56.615C56.0947 16.763 55.6689 16.3372 55.6689 15.8169C55.6689 15.2966 56.0947 14.8708 56.615 14.8708H59.2167C59.737 14.8708 60.1627 15.2966 60.1627 15.8169C60.1627 16.3372 59.737 16.763 59.2167 16.763Z"
                        fill="#30323A" />
                </svg>
                <span>고양이</span>
            </div>
        </div>

        <div id='product_category'>
            <div class="category_active"> <!--강아지 상품 카테고리-->
                <!-- 사료 -->
                <div class="product_active">
                    <img src="/images/shop/shoplist/food_dog.svg" alt="사료_강아지" />
                    <p>사료</p>
                </div>
                <!-- 간식 -->
                <div>
                    <img src="/images/shop/shoplist/snack_dog.svg" alt="간식_강아지" />
                    <p>간식</p>
                </div>
                <!-- 영양제 -->
                <div>
                    <img src="/images/shop/shoplist/tonic.svg" alt="영양제" />
                    <p>영양제</p>
                </div>
                <!-- 장난감 -->
                <div>
                    <img src="/images/shop/shoplist/toy_dog.svg" alt="장난감_강아지" />
                    <p>장난감</p>
                </div>
            </div>
            <div> <!--고양이 상품 카테고리-->
                <!-- 사료 -->
                <div>
                    <img src="/images/shop/shoplist/food_cat.svg" alt="사료_고양이" />
                    <p>사료</p>
                </div>
                <!-- 간식 -->
                <div>
                    <img src="/images/shop/shoplist/snack_cat.svg" alt="간식_고양이" />
                    <p>간식</p>
                </div>
                <!-- 영양제 -->
                <div>
                    <img src="/images/shop/shoplist/tonic.svg" alt="영양제" />
                    <p>영양제</p>
                </div>
                <!-- 장난감 -->
                <div>
                    <img src="/images/shop/shoplist/toy_cat.svg" alt="장난감_고양이" />
                    <p>장난감</p>
                </div>
            </div>
        </div>

        <div id="filterhead">
            <button id="filterbtn_pop" class="filter_active">인기순</button>
            <button id="filterbtn_new">신상품순</button>
            <button id="filterbtn_high">고가순</button>
            <button id="filterbtn_low">저가순</button>
        </div>

        <div id="product_container">
        	<c:forEach begin="0" end="11" >        
	            <div class="products">
	                <div class="product_img">
	                    <div class="product_img_cover"> 
	                        <button><img src="/images/shop/shoplist/cart_yellow.svg" alt="cart"/></button>
	                    </div>
	                </div>
	                <div id="product_info">
	                    <span> 상품명 </span>
	                    <img src="/images/shop/shoplist/coin2.svg" alt="coin"/>
	                    <span> 10,000 </span>
	                </div>
	            </div>
        	</c:forEach>

        </div> <!-- 상품목록 -->

        <div id="pages">
            <a href="" class="page_active">1</a>
            <a href="">2</a>
            <a href="">3</a>
            <a href="">4</a>
        </div>

    </div>
</body>
</html>