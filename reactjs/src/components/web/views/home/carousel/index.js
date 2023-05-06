import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";

const Carousels = (props)=>{
    const responsive = {
        desktop: {
            breakpoint: { max: 3000, min: 1024 },
            items: 4,
            slidesToSlide: 4 // optional, default to 1.
          },
          tablet: {
            breakpoint: { max: 1024, min: 464 },
            items: 2,
            slidesToSlide: 2 // optional, default to 1.
          },
          mobile: {
            breakpoint: { max: 464, min: 0 },
            items: 1,
            slidesToSlide: 1 // optional, default to 1.
          }
      };
      

      return(
        <Carousel 
            // slidesToSlide={1}
            // rswipeable={false}
            // draggable={false}
            // showDots={true}
            responsive={responsive}
            // ssr={true}
            // infinite={true}
            // autoPlay={props.deviceType !== "mobile" ? true : false}
            // autoPlaySpeed={3000}
            // keyBoardControl={true}
            // customTransition="all 5s"
            // transitionDuration={500}
            // containerClassName="carousel-container"
            // removeArrowOnDeviceType={["tablet", "mobile"]}
            // deviceType={props.deviceType}
            // dotListClassName="custom-dot-list-style"
            // itemClassName="carousel-item-padding-40-px"
            >

            <div className="carousel ms-2 mt-2">
                <img src="http://localhost/NLCS/public/hinh/banner1.jpg" alt="" className="d-block w-100" height="170px"/>
                <div className="header-carousel-content">
                    <h5>Bàn ăn sang trọng</h5>
                    <a className="button" href="sanpham.php">Xem ngay</a>
                </div>
            </div>
            <div className="carousel ms-2 mt-2">
                <img src="http://localhost/NLCS/public/hinh/banner1.jpg" alt="" className="d-block w-100" height="170px"/>
                <div className="header-carousel-content">
                    <h5>Bàn ăn sang trọng</h5>
                    <a className="button" href="sanpham.php">Xem ngay</a>
                </div>
            </div>
            <div className="carousel ms-2 mt-2">
                <img src="http://localhost/NLCS/public/hinh/banner1.jpg" alt="" className="d-block w-100" height="170px"/>
                <div className="header-carousel-content">
                    <h5>Bàn ăn sang trọng</h5>
                    <a className="button" href="sanpham.php">Xem ngay</a>
                </div>
            </div>
            <div className="carousel ms-2 mt-2">
                <img src="http://localhost/NLCS/public/hinh/banner1.jpg" alt="" className="d-block w-100" height="170px"/>
                <div className="header-carousel-content">
                    <h5>Bàn ăn sang trọng</h5>
                    <a className="button" href="sanpham.php">Xem ngay</a>
                </div>
            </div>
            <div className="carousel ms-2 mt-2">
                <img src="http://localhost/NLCS/public/hinh/banner1.jpg" alt="" className="d-block w-100" height="170px"/>
                <div className="header-carousel-content">
                    <h5>Bàn ăn sang trọng</h5>
                    <a className="button" href="sanpham.php">Xem ngay</a>
                </div>
            </div>
            <div className="carousel ms-2 mt-2">
                <img src="http://localhost/NLCS/public/hinh/banner1.jpg" alt="" className="d-block w-100" height="170px"/>
                <div className="header-carousel-content">
                    <h5>Bàn ăn sang trọng</h5>
                    <a className="button" href="sanpham.php">Xem ngay</a>
                </div>
            </div>
            <div className="carousel ms-2 mt-2">
                <img src="http://localhost/NLCS/public/hinh/banner1.jpg" alt="" className="d-block w-100" height="170px"/>
                <div className="header-carousel-content">
                    <h5>Bàn ăn sang trọng</h5>
                    <a className="button" href="sanpham.php">Xem ngay</a>
                </div>
            </div>
            <div className="carousel ms-2 mt-2">
                <img src="http://localhost/NLCS/public/hinh/banner1.jpg" alt="" className="d-block w-100" height="170px"/>
                <div className="header-carousel-content">
                    <h5>Bàn ăn sang trọng</h5>
                    <a className="button" href="sanpham.php">Xem ngay</a>
                </div>
            </div><div className="carousel ms-2 mt-2">
                <img src="http://localhost/NLCS/public/hinh/banner1.jpg" alt="" className="d-block w-100" height="170px"/>
                <div className="header-carousel-content">
                    <h5>Bàn ăn sang trọng</h5>
                    <a className="button" href="sanpham.php">Xem ngay</a>
                </div>
            </div>
        </Carousel>
      )
}
export default Carousels;